from __future__ import annotations

import sqlite3
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parent.parent
DB_PATH = ROOT / ".wrangler" / "state" / "v3" / "d1" / "miniflare-D1DatabaseObject" / "f4096c43ab3b4d3bd6f4147d3cabd80eae0c9dac6162ad78be4dc6d3b35bb6a8.sqlite"

ADMIN_PERMISSIONS = [
    "songs.create",
    "songs.bulk_import",
    "songs.edit",
    "songs.delete",
    "songs.view_admin_content",
    "variants.manage",
    "links.manage",
    "proposals.review",
    "proposals.approve",
    "proposals.reject",
]


def main() -> int:
    if len(sys.argv) != 3:
        print("usage: python scripts/seed_local_test_roles.py <admin_nickname> <super_admin_nickname>")
        return 2

    admin_nickname = sys.argv[1].strip().lower()
    super_nickname = sys.argv[2].strip().lower()
    if not admin_nickname or not super_nickname:
        print("nicknames must be non-empty")
        return 2

    con = sqlite3.connect(DB_PATH)
    try:
        admin = con.execute(
            "SELECT id, nickname FROM users WHERE lower(trim(coalesce(nickname,''))) = ? LIMIT 1",
            (admin_nickname,),
        ).fetchone()
        super_admin = con.execute(
            "SELECT id, nickname FROM users WHERE lower(trim(coalesce(nickname,''))) = ? LIMIT 1",
            (super_nickname,),
        ).fetchone()
        if not admin:
            raise SystemExit(f"admin user not found: {admin_nickname}")
        if not super_admin:
            raise SystemExit(f"super admin user not found: {super_nickname}")

        con.execute("UPDATE users SET role='admin' WHERE id=?", (admin[0],))
        con.execute("DELETE FROM user_permissions WHERE user_id=?", (admin[0],))
        con.execute("DELETE FROM user_scope_languages WHERE user_id=?", (admin[0],))
        for permission in ADMIN_PERMISSIONS:
            con.execute(
                "INSERT OR IGNORE INTO user_permissions (user_id, permission, created_at) VALUES (?, ?, datetime('now'))",
                (admin[0], permission),
            )
        con.execute(
            "INSERT OR IGNORE INTO user_scope_languages (user_id, lang, created_at) VALUES (?, '*', datetime('now'))",
            (admin[0],),
        )

        con.execute("UPDATE users SET role='super_admin' WHERE id=?", (super_admin[0],))
        con.execute("DELETE FROM user_permissions WHERE user_id=?", (super_admin[0],))
        con.execute("DELETE FROM user_scope_languages WHERE user_id=?", (super_admin[0],))
        con.commit()

        print(f"seeded admin={admin[1]} super_admin={super_admin[1]}")
        return 0
    finally:
        con.close()


if __name__ == "__main__":
    raise SystemExit(main())
