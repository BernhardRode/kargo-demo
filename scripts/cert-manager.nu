#!/usr/bin/env nu

def apply_certmanager [] {

    (
        helm upgrade --install cert-manager cert-manager
            --repo https://charts.jetstack.io
            --namespace cert-manager --create-namespace
            ---values cert-manager-values.yaml --wait
    )

}
