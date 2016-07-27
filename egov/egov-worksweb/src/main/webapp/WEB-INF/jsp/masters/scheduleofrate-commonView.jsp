<%--
  ~ eGov suite of products aim to improve the internal efficiency,transparency,
  ~    accountability and the service delivery of the government  organizations.
  ~
  ~     Copyright (C) <2015>  eGovernments Foundation
  ~
  ~     The updated version of eGov suite of products as by eGovernments Foundation
  ~     is available at http://www.egovernments.org
  ~
  ~     This program is free software: you can redistribute it and/or modify
  ~     it under the terms of the GNU General Public License as published by
  ~     the Free Software Foundation, either version 3 of the License, or
  ~     any later version.
  ~
  ~     This program is distributed in the hope that it will be useful,
  ~     but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~     GNU General Public License for more details.
  ~
  ~     You should have received a copy of the GNU General Public License
  ~     along with this program. If not, see http://www.gnu.org/licenses/ or
  ~     http://www.gnu.org/licenses/gpl.html .
  ~
  ~     In addition to the terms of the GPL license to be adhered to in using this
  ~     program, the following additional terms are to be complied with:
  ~
  ~         1) All versions of this program, verbatim or modified must carry this
  ~            Legal Notice.
  ~
  ~         2) Any misrepresentation of the origin of the material is prohibited. It
  ~            is required that all modified versions of this material be marked in
  ~            reasonable ways as different from the original version.
  ~
  ~         3) This license does not grant any rights to any user of the program
  ~            with regards to rights under trademark law for use of the trade names
  ~            or trademarks of eGovernments Foundation.
  ~
  ~   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
  --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
		<s:hidden name="mode" id="mode" />
			<div class="panel-heading"></div>
			<div class="panel-body">
				<div class="row add-border">
					<div class="col-xs-3 add-margin">
						<s:text name="master.sor.category" />
					</div>
					<div class="col-xs-3 add-margin view-content">
						<s:property value="%{scheduleCategory.description}" />
					</div>

					<div class="col-xs-3 add-margin">
						<s:text name="master.sor.code" />
					</div>
					<div class="col-xs-3 add-margin view-content">
						<s:property value="%{code}" />
					</div>

					
				</div>
				<div class="row add-border">
					<div class="col-xs-3 add-margin">
						<s:text name="master.sor.description" />
					</div>
					<div class="col-xs-9 add-margin view-content">
						<s:property value="%{description}" />
					</div>
				</div>
				
				<div class="row add-border">
					<div class="col-xs-3 add-margin">
						<s:text name="master.sor.uom" />
					</div>
					<div class="col-xs-9 add-margin view-content">
						<s:property value="%{uom.uom}" />
					</div>
				</div>
			</div>		
							
		
		</div>
		
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-heading">
				<div class="panel-title">
					<s:text name="master.sor.rateDetails" />
				</div>
			</div>
			<div class="panel-body">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th><s:text name="column.title.SLNo" /></th>
							<th align="right"><s:text name="master.sor.rate" /></th>
							<th><s:text name="master.sor.startDate" /></th>
							<th><s:text name="master.sor.endDate" /></th>
						</tr>
					</thead>
					<tbody>
					<s:iterator var="rateIterator" value="model.sorRates" status="rate_row_status">
						<tr>
							<td><s:property value="#rate_row_status.count" /></td>
							<td align="right">
								<fmt:formatNumber  maxFractionDigits="2" minFractionDigits="2" pattern="#.##"><s:property value="%{rate}" /></fmt:formatNumber>
							</td>
							<td><s:date name="validity.startDate" format="dd/MM/yyyy" /></td>
							<td><s:date name="validity.endDate" format="dd/MM/yyyy" /></td>
						</tr>
					</s:iterator>
					</tbody>
				</table>
			</div>
		</div>
		<s:if test="%{model.marketRates.size() != 0}">	
		<div class="panel panel-primary" data-collapsed="0">
			<div class="panel-heading">
				<div class="panel-title">
					<s:text name="sor.marketrateDetails" />
				</div>
			</div>
		
			<div class="panel-body">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th><s:text name="column.title.SLNo" /></th>
							<th align="right"><s:text name="master.sor.marketRate" /></th>
							<th><s:text name="master.sor.startDate" /></th>
							<th><s:text name="master.sor.endDate" /></th>
						</tr>
					</thead>
					<tbody>
					<s:iterator var="marketRateIterator" value="model.marketRates" status="marketrate_row_status">
						<tr>
							<td><s:property value="#marketrate_row_status.count" /></td>
							<td align="right">
								<fmt:formatNumber  maxFractionDigits="2" minFractionDigits="2" pattern="#.##"><s:property value="%{marketRate}" /></fmt:formatNumber>
							</td>
							<td><s:date name="validity.startDate" format="dd/MM/yyyy" /></td>
							<td><s:date name="validity.endDate" format="dd/MM/yyyy" /></td>
						</tr>
					</s:iterator>
					</tbody>
				</table>
			</div>
		</s:if>
		
</div>
</div>
