import { createRouter, createWebHistory } from "vue-router";

import invoiceIndex from '../components/invoices/Index.vue';
import invoiceShow from '../components/invoices/show.vue';
import notFound from '../components/NotFound.vue';
import NewInvoice from '../components/invoices/New.vue';
import editInvoice from '../components/invoices/edit.vue';


const routes = [

    {
        path: '/',
        component: invoiceIndex
    },

    {
        path: '/invoice/new',
        component: NewInvoice
    },

    {
        path: '/invoice/show/:id',
        component: invoiceShow,
        props: true
    },

    {
        path: '/invoice/edit/:id',
        component: editInvoice,
        props: true
    },

    {
        path: '/:pathMatch(.*)*',
        component: notFound
    },

]

const router  = createRouter({

    history: createWebHistory(),
    routes

})

export default router