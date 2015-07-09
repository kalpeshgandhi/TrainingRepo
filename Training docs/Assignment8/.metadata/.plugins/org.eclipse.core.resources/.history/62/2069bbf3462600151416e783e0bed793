<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_notification_of_Follow_Up</fullName>
        <description>Email notification of Follow Up.</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Follow_Up_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>DNC</fullName>
        <field>RecordTypeId</field>
        <lookupValue>DNC</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>DNC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Landline</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LANDLINE</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Landline</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mobile_No</fullName>
        <description>This displays the updated Field</description>
        <field>RecordTypeId</field>
        <lookupValue>Mobile</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Mobile No</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>NoNumber</fullName>
        <field>RecordTypeId</field>
        <lookupValue>No_Number</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>NoNumber</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Follow Up To Lead Owner If Time Is Elapsed</fullName>
        <actions>
            <name>Email_notification_of_Follow_Up</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Lead owner if Time of follow-up has been elapsed.</description>
        <formula>Follow_up__c &lt; TODAY()</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Record Type Is DNC</fullName>
        <actions>
            <name>DNC</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This is a WorkFlow To Assign the Record Type is DNC.</description>
        <formula>OR(DoNotCall ==True,ISNULL(  Phone ) , ISNULL(  MobilePhone ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Record Type Is Landline</fullName>
        <actions>
            <name>Landline</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This is a WorkFlow To Assign the Record Type is Landline.</description>
        <formula>AND(NOT(ISBLANK(Phone)), ISBLANK(MobilePhone),DoNotCall ==FALSE)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Record Type Is Mobile</fullName>
        <actions>
            <name>Mobile_No</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This is a WorkFlow To Assign the Record Type is Mobile.</description>
        <formula>AND( NOT(  ISBLANK(MobilePhone)),(ISBLANK(Phone)),DoNotCall =FALSE)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Record Type Is No Number</fullName>
        <actions>
            <name>NoNumber</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This is a WorkFlow To Assign the Record Type is No Number.</description>
        <formula>AND(( ISBLANK(  MobilePhone ) ), (ISBLANK(   Phone )), DoNotCall ==FALSE  )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
