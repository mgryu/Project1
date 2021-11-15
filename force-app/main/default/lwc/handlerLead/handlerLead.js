import { LightningElement } from 'lwc';

export default class HandlerLead extends LightningElement {

    CreateLead = false;
    ShowButtons = true;

    handleClickLeadForm(){
        this.CreateLead = true;
        this.ShowButtons = false;
    }
}