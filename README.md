# THQN Workflow API

Redmine API to access workflow status transitions and field permissions.

Fork of [RealEnder/redmine_workflow_api](https://github.com/RealEnder/redmine_workflow_api), updated for Redmine 6 compatibility.

## Endpoints

### Get possible transitions for given role and tracker

```
GET /workflow/transitions.json?role_id=1&tracker_id=1
GET /workflow/transitions.xml?role_id=1&tracker_id=1
```

**Example response (XML):**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<transitions type="array">
    <transition old_status_id="1" new_status_id="5" author="false"/>
    <transition old_status_id="2" new_status_id="5" author="false"/>
    <transition old_status_id="0" new_status_id="1" author="true"/>
</transitions>
```

### Get field permissions for given role and tracker

```
GET /workflow/permissions.json?role_id=1&tracker_id=1
GET /workflow/permissions.xml?role_id=1&tracker_id=1
```

**Example response (XML):**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<permissions>
    <fields type="array">
        <field id="project_id" name="Project" />
        <field id="subject" name="Subject" />
        <field id="description" name="Description" />
    </fields>
    <custom_fields type="array">
        <custom_field>
            <id>7</id>
            <type>IssueCustomField</type>
            <name>Platform</name>
            ...
        </custom_field>
    </custom_fields>
    <statuses type="array">
        <status>
            <status_id>1</status_id>
            <name>New</name>
            <is_closed>false</is_closed>
            <permissions>
                <permission field="description" permission="required" />
                <permission field="assigned_to_id" permission="readonly" />
            </permissions>
        </status>
    </statuses>
</permissions>
```

## Installation

```bash
cd /path/to/redmine/plugins
git clone https://github.com/THQNWebTools/thqn_workflow_api.git
```

Then restart Redmine.

## Compatibility

- **Redmine 6.0.x** - Tested
- **Ruby 3.2+**
- **Rails 7.2+**

## License

Copyright 2016 Alex Stanev <alex@stanev.org>
Copyright 2025 THQ Nordic

This plugin is released under the GPL v3 license. See LICENSE for more information.
