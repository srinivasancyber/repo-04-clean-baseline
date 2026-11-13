from html import escape

def render_greeting(name: str) -> str:
    # Output encoding for HTML context.
    return "<h1>Hello " + escape(name, quote=True) + "</h1>"

def get_record_for_user(requesting_user_id: str, record_owner_id: str, record: dict):
    # Explicit ownership check before returning a record.
    if requesting_user_id != record_owner_id:
        raise PermissionError("Not authorized")
    return record
