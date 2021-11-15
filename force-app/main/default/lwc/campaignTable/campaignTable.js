import { LightningElement, wire } from 'lwc';
import getCampaigns from '@salesforce/apex/Campaigns.getCampaigns';


import NAME_FIELD from '@salesforce/schema/Campaign.Name';
import LEAD_FIELD from '@salesforce/schema/Campaign.NumberOfLeads';


export default class CampaignTable extends LightningElement {
    data = [];
    columns = [
        {label: NAME_FIELD.fieldApiName, fieldName: NAME_FIELD.fieldApiName},
        {label: LEAD_FIELD.fieldApiName, fieldName: LEAD_FIELD.fieldApiName}
    ];

    @wire(getCampaigns)
    populateTableData({error, data}) {
        if(data) {
            this.data = data;
        } else if(error) {
            const toastEvent = new ShowToastEvent({
                title: 'Error',
                message: error,
                variant: 'error'
            });

            this.dispatchEvent(toastEvent);
        }
    }
}