<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
	<alerts>
		<fullName>Employee_record_is_deactivated</fullName>
		<description>Employee record is deactivated.</description>
		<protected>true</protected>
		<recipients>
			<recipient>kalpesh.gandhi@eternussolutions.com</recipient>
			<type>user</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Employee_record_is_deactivated</template>
	</alerts>
	<alerts>
		<fullName>Sends_the_Email_When_Account_is_inactive</fullName>
		<description>Sends the Email When Account is inactive</description>
		<protected>false</protected>
		<recipients>
			<type>owner</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/MarketingProductInquiryResponse</template>
	</alerts>
	<fieldUpdates>
		<fullName>EmpRole</fullName>
		<description>This is a Field Update for Employee Role.</description>
		<field>RoleTry__c</field>
		<formula>Role__r.Name</formula>
		<name>EmpRole</name>
		<notifyAssignee>false</notifyAssignee>
		<operation>Formula</operation>
		<protected>false</protected>
		<reevaluateOnChange>true</reevaluateOnChange>
	</fieldUpdates>
	<fieldUpdates>
		<fullName>EmpRole1</fullName>
		<description>This is a Field Update Criteria.</description>
		<field>RoleTry__c</field>
		<formula>Role__r.Name</formula>
		<name>EmpRole</name>
		<notifyAssignee>false</notifyAssignee>
		<operation>Formula</operation>
		<protected>false</protected>
	</fieldUpdates>
	<fieldUpdates>
		<fullName>Recordtype_Non_Technical</fullName>
		<description>This is a Field Update Task When the Current Employee
			Check box is False Then Record Type Is Non Technical.</description>
		<field>RecordTypeId</field>
		<lookupValue>NonTechnical</lookupValue>
		<lookupValueType>RecordType</lookupValueType>
		<name>Recordtype Non Technical</name>
		<notifyAssignee>false</notifyAssignee>
		<operation>LookupValue</operation>
		<protected>false</protected>
	</fieldUpdates>
	<rules>
		<fullName>Email Notification To Project Manager When Record Is
			Deactivated%2E</fullName>
		<actions>
			<name>Employee_record_is_deactivated</name>
			<type>Alert</type>
		</actions>
		<active>true</active>
		<criteriaItems>
			<field>Employee__c.Is_Active__c</field>
			<operation>equals</operation>
			<value>False</value>
		</criteriaItems>
		<description>Notify the Manager of the Employee once the record is
			deactivated.</description>
		<triggerType>onCreateOrTriggeringUpdate</triggerType>
	</rules>
	<rules>
		<fullName>Selects Role for One to One Relationship</fullName>
		<actions>
			<name>EmpRole1</name>
			<type>FieldUpdate</type>
		</actions>
		<active>true</active>
		<criteriaItems>
			<field>Employee__c.Is_Active__c</field>
			<operation>equals</operation>
			<value>True</value>
		</criteriaItems>
		<description>This is a Employee Record Which Selects the role for One
			To one relationship</description>
		<triggerType>onAllChanges</triggerType>
	</rules>
	<rules>
		<fullName>Update Record Type to Non Technical If Current Employee is
			False%2E</fullName>
		<actions>
			<name>Recordtype_Non_Technical</name>
			<type>FieldUpdate</type>
		</actions>
		<active>true</active>
		<criteriaItems>
			<field>Employee__c.Current_Employee__c</field>
			<operation>equals</operation>
			<value>False</value>
		</criteriaItems>
		<description>This is a Workflow to Update the Record type for the
			Employee is its Current Employee Check Box is False.</description>
		<triggerType>onCreateOrTriggeringUpdate</triggerType>
	</rules>
</Workflow>
