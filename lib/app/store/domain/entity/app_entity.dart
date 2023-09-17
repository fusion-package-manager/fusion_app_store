// This class represents an application entity.
class AppEntity {
  final String packageId; // Unique identifier for the app package.
  final String name; // The name of the application.
  final String shortDescription; // A short description of the application.
  final List<String>
      description; // A list of detailed descriptions for the application.
  final String contentRated; // the target audience tag.
  final AppCategory category; // The category of the application.
  final Platforms platforms; // Platforms on which the application is supported.
  final AppSource source; // Source information for the application.
  final AppSupport support; // Support contact information for the application.
  final AppLinks links; // Links related to the application.
  final Set<Review> reviews; // App Reviews.
  final int downloads; // Uploaded on Date.
  final DateTime uploadDate; // Uploaded on Date.
  final DateTime updateDate; // Updated on Date.

  // Constructor for AppEntity.
  AppEntity({
    required this.packageId,
    required this.name,
    required this.shortDescription,
    required this.description,
    required this.contentRated,
    required this.category,
    required this.platforms,
    required this.source,
    required this.support,
    required this.links,
    required this.reviews,
    required this.downloads,
    required this.uploadDate,
    required this.updateDate,
  });

  @override
  bool operator ==(Object other) {
    if (other.runtimeType == AppEntity) {
      return (other as AppEntity).packageId == packageId;
    }
    return super == other;
  }

  @override
  int get hashCode => super.hashCode + packageId.hashCode;
}

// This class represents an installer for an application.
class Installer {
  final bool enabled; // Indicates if the installer is enabled.
  final bool latest; // Indicates if the installer is for the latest version.
  final String? bundle; // Bundle Url for the installer (nullable).
  final String?
      preDownloadScript; // Script to execute before downloading (nullable).
  final String?
      postDownloadScript; // Script to execute after downloading (nullable).

  // Constructor for Installer.
  Installer({
    required this.enabled,
    required this.latest,
    required this.bundle,
    required this.preDownloadScript,
    required this.postDownloadScript,
  });
}

// This class represents versions of an application.
class Versions {
  final Map<String, Installer>
      versions; // Map of version names to their respective installers.

  // Constructor for Versions.
  Versions({required this.versions});
}

// This class represents a supported platform for an application.
class SupportedPlatform {
  final String forceLatest; // Force the latest version for the platform.
  final List<String>
      targetVersions; // List of target versions for the platform.
  final Versions versions; // Versions of the application for the platform.

  // Constructor for SupportedPlatform.
  SupportedPlatform({
    required this.forceLatest,
    required this.targetVersions,
    required this.versions,
  });
}

// This class represents supported platforms for an application.
class Platforms {
  final Map<String, SupportedPlatform>
      platforms; // Map of platform names to their SupportedPlatform objects.

  // Constructor for Platforms.
  Platforms({required this.platforms});
}

// Enumeration representing different categories for an application.
enum AppCategory {
  system,
  development,
  finance,
  packages,
  artAndDesign,
  personalisation,
  tools,
  media,
  games,
}

// This class represents the source of an application.
class AppSource {
  final String url; // The URL where the application source can be found.

  // Constructor for AppSource.
  AppSource({required this.url});
}

// This class represents support contact information for an application.
class AppSupport {
  final String supportEmail; // Email address for application support.

  // Constructor for AppSupport.
  AppSupport({required this.supportEmail});
}

// This class represents links related to an application.
class AppLinks {
  final Map<String, String> links; // Map of link names to their URLs.

  // Constructor for AppLinks.
  AppLinks({required this.links});
}

/// A class representing a review for an application or product.
class Review {
  final String username; // The username of the reviewer.
  final int number; // A unique number identifying the review.
  final String uniqueID; // A unique identifier for the review.
  final String description; // The description or content of the review.
  final bool resolved; // Indicates whether the review has been resolved.
  final int stars; // The rating stars given in the review.

  // Constructor for Review.
  Review({
    required this.username,
    required this.number,
    required this.uniqueID,
    required this.description,
    required this.resolved,
    required this.stars,
  });

  @override
  bool operator ==(Object other) {
    if (other.runtimeType == Review) {
      // Compare reviews based on their uniqueID.
      return (other as Review).uniqueID == uniqueID;
    }
    return super == other;
  }

  @override
  int get hashCode => super.hashCode + number;
}
