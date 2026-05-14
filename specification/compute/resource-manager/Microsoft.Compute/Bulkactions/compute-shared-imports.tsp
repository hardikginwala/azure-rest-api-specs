import "@typespec/versioning";
import "../Compute/common/models.tsp";
import "../Compute/common/models-ref.tsp";
import "../Compute/Compute/vmSharedTypes.tsp";
import "../Compute/Compute/virtualMachineSharedModel.tsp";

using Versioning;

@versioned(Versions)
namespace Compute {
  /**
   * Minimal version enum required by imported shared Compute models.
   */
  enum Versions {
    /** The 2025-04-01 API version. */
    v2025_04_01: "2025-04-01",

    /** The 2025-11-01 API version. */
    v2025_11_01: "2025-11-01",
  }
}
