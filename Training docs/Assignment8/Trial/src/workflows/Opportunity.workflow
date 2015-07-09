<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
	<alerts>
		<fullName>Approval_Email_Alert</fullName>
		<description>Approval Email Alert</description>
		<protected>false</protected>
		<recipients>
			<recipient>kalpesh.gandhi@eternussolutions.com</recipient>
			<type>user</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Approval_For_Manager</template>
	</alerts>
	<alerts>
		<fullName>Approval_Email_Alert1</fullName>
		<description>Approval Email Alert1</description>
		<protected>false</protected>
		<recipients>
			<recipient>kalpesh.gandhi@eternussolutions.com</recipient>
			<type>user</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Approval_For_Manager</template>
	</alerts>
	<alerts>
		<fullName>Email_alert_when_the_Opportunity_amount_is_greater_then_5000</fullName>
		<description>Email alert when the Opportunity amount is greater then
			5000.</description>
		<protected>false</protected>
		<recipients>
			<recipient>kalpesh.gandhi@eternussolutions.com</recipient>
			<type>user</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Opportunity_Big_deal</template>
	</alerts>
	<alerts>
		<fullName>Oppotunity_Big_Deal</fullName>
		<description>Oppotunity Big Deal</description>
		<protected>true</protected>
		<recipients>
			<recipient>kalpesh.gandhi@eternussolutions.com</recipient>
			<type>user</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Opportunity_Big_deal</template>
	</alerts>
	<rules>
		<fullName>Email When Big Opportunity Created</fullName>
		<actions>
			<name>Oppotunity_Big_Deal</name>
			<type>Alert</type>
		</actions>
		<active>true</active>
		<criteriaItems>
			<field>Opportunity.Amount</field>
			<operation>greaterThan</operation>
			<value>50000</value>
		</criteriaItems>
		<criteriaItems>
			<field>Opportunity.StageName</field>
			<operation>equals</operation>
			<value>Negotiation/Review</value>
		</criteriaItems>
		<description>If Opportunity stage is in &apos;negotiation/review&apos;
			stage it sends an email to the opportunity owner indicating a big
			deal is being created.</description>
		<triggerType>onCreateOrTriggeringUpdate</triggerType>
	</rules>
</Workflow>
