from beet import (
    Context
)
import logging
import os

LOGGER = logging.getLogger(__name__)


def beet_default(ctx: Context):
    """Package the datapack for release"""
    # Get git tag if available
    ref = os.getenv("GITHUB_REF_NAME")
    ref_type = os.getenv("GITHUB_REF_TYPE")

    # Use project version, unless git tag exists
    version = f"v{ctx.project_version}"
    if ref_type == "tag":
        version = ref

    # Save datapack
    ctx.data.save(
        path=ctx.directory / ".build" / f"{ctx.project_name}-{version}-Data-Pack",
        overwrite=True,
        zipped=True
    )