#!/bin/bash
echo "mvn scm-publish:publish-scm -Dscmpublish.pubScmUrl=scm:<scm-provider>... -Dscmpublish.content=...path-to-content..."

echo "pubScmUrl: Location of the scm publication tree: scm:\<scm_provider\>\<delimiter\>\<provider_specific_part\>. "
echo "  pubScmUrl Example: scm:svn:https://svn.apache.org/repos/infra/websites/production/maven/content/plugins/maven-scm-publish-plugin-LATEST/"

echo mvn scm-publish:publish-scm -Dscmpublish.pubScmUrl=scm:  -Dscmpublish.content=