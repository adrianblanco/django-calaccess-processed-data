INSERT INTO calaccess_processed_form460schedulehitem (
    filing_id,
    line_item,
    recipient_code,
    recipient_committee_id,
    recipient_title,
    recipient_lastname,
    recipient_firstname,
    recipient_name_suffix,
    recipient_city,
    recipient_state,
    recipient_zip,
    recipient_employer,
    recipient_occupation,
    recipient_is_self_employed,
    treasurer_title,
    treasurer_lastname,
    treasurer_firstname,
    treasurer_name_suffix,
    treasurer_city,
    treasurer_state,
    treasurer_zip,
    intermediary_title,
    intermediary_lastname,
    intermediary_firstname,
    intermediary_name_suffix,
    intermediary_city,
    intermediary_state,
    intermediary_zip,
    begin_period_balance,
    amount_loaned,
    amount_paid,
    amount_forgiven,
    end_period_balance,
    date_due,
    interest_received,
    interest_rate,
    original_amount,
    date_incurred,
    cumulative_ytd_contributions,
    transaction_id,
    memo_reference_number,
    reported_on_h1
)
SELECT 
    filing.filing_id,
    item_version.line_item,
    item_version.recipient_code,
    item_version.recipient_committee_id,
    item_version.recipient_title,
    item_version.recipient_lastname,
    item_version.recipient_firstname,
    item_version.recipient_name_suffix,
    item_version.recipient_city,
    item_version.recipient_state,
    item_version.recipient_zip,
    item_version.recipient_employer,
    item_version.recipient_occupation,
    item_version.recipient_is_self_employed,
    item_version.treasurer_title,
    item_version.treasurer_lastname,
    item_version.treasurer_firstname,
    item_version.treasurer_name_suffix,
    item_version.treasurer_city,
    item_version.treasurer_state,
    item_version.treasurer_zip,
    item_version.intermediary_title,
    item_version.intermediary_lastname,
    item_version.intermediary_firstname,
    item_version.intermediary_name_suffix,
    item_version.intermediary_city,
    item_version.intermediary_state,
    item_version.intermediary_zip,
    item_version.begin_period_balance,
    item_version.amount_loaned,
    item_version.amount_paid,
    item_version.amount_forgiven,
    item_version.end_period_balance,
    item_version.date_due,
    item_version.interest_received,
    item_version.interest_rate,
    item_version.original_amount,
    item_version.date_incurred,
    item_version.cumulative_ytd_contributions,
    item_version.transaction_id,
    item_version.memo_reference_number,
    item_version.reported_on_h1
FROM calaccess_processed_form460filing filing
JOIN calaccess_processed_form460filingversion filing_version
ON filing.filing_id = filing_version.filing_id
AND filing.amendment_count = filing_version.amend_id
JOIN calaccess_processed_form460schedulehitemversion item_version
ON filing_version.id = item_version.filing_version_id;