# PasarKu

## Concept
"PasarKu" (Indonesian for "My Market") is a decentralized app (dApp) that connects small-scale vendors—like street food sellers, farmers, or artisans in Indonesia—to buyers using blockchain. It aims to solve common issues in Indonesia’s informal economy: lack of trust, high transaction fees, and limited access to digital payments. By using IDRX, vendors and buyers can transact securely with a stablecoin pegged to the Rupiah, avoiding crypto volatility.
## Why This Fits
- Local Relevance: Indonesia has a massive informal market (e.g., warungs, pasar tradisional). Blockchain can bring transparency and efficiency to these cash-heavy systems.

- IDRX Integration: Payments are made in IDRX, ensuring stability and aligning with the hackathon’s rules.

- Scalability: Lisk’s Layer 2 solution on Ethereum keeps fees low, making it viable for small transactions.

- Growth Potential: A successful prototype could expand blockchain use in Indonesia’s everyday economy.

## How It Works
### 1. Vendor Onboarding:
- Vendors create a profile using Xellar’s social login kit (e.g., via Google or WhatsApp), generating a wallet instantly.

- They list products (e.g., "Sate Ayam – 25,000 IDR") with descriptions and photos.

### 2. Buyer Experience:
- Buyers browse listings on the dApp (web or mobile interface).

- They pay with IDRX via their Xellar wallet, triggering a smart contract.

### 3. Smart Contract:
- A simple smart contract holds the IDRX payment in escrow.

- Once the buyer confirms delivery (or a timeout occurs), funds release to the vendor.

- Verified on Blockscout Explorer, as required.

### 4. Trust Features:
- Vendor ratings stored on-chain for transparency.

- Option for dispute resolution via a community voting mechanism (future enhancement).

### 5. Delivery:
- For physical goods, vendors coordinate pickup/delivery offline (e.g., via Gojek or local couriers).

- Digital goods (e.g., vouchers) could be delivered instantly via the dApp.

## Why Would People Use PasarKu? Key Advantages
To make PasarKu appealing, it needs to solve specific problems better than traditional marketplaces while being accessible. Here’s what could set it apart:
### 1. Lower Fees Through Blockchain
- Problem: Platforms like Tokopedia or Shopee charge vendors significant fees (e.g., 2-10% per transaction), which cuts into profits for small vendors like farmers or warung owners.

- PasarKu’s Advantage: Lisk’s Layer 2 blockchain offers low transaction fees (often cents per transaction). PasarKu could pass these savings to vendors, letting them keep more money compared to centralized platforms.

- User Appeal: Vendors earn more per sale, and buyers might see lower prices if vendors pass on savings.

### 2. Trust and Transparency
- Problem: In informal markets, trust is a big issue—buyers worry about fake goods, and vendors fear non-payment. Traditional platforms rely on centralized ratings, which can be manipulated.

- PasarKu’s Advantage: Blockchain ensures transparent, tamper-proof records. Payments are held in escrow via smart contracts, only released when the buyer confirms delivery. Vendor ratings could be stored on-chain, making them verifiable and harder to fake.

- User Appeal: Buyers feel safer knowing funds are secure until delivery, and vendors are guaranteed payment upon completion.

### 3. Stable and Accessible Payments with IDRX
- Problem: Many small vendors don’t accept digital payments due to complexity or fees, and buyers in rural areas may not trust volatile cryptocurrencies.

- PasarKu’s Advantage: IDRX is a stablecoin pegged to the Rupiah, so it feels like using regular money but with blockchain’s security and low fees. Xellar’s social login makes wallet creation as easy as signing in with WhatsApp or Google—no crypto knowledge needed.

- User Appeal: Vendors and buyers use a familiar currency (IDR equivalent) without needing bank accounts or crypto exchanges.

### 4. Empowering Small Vendors
- Problem: Farmers and artisans often struggle to reach broader markets due to lack of tech skills or high platform costs.

- PasarKu’s Advantage: PasarKu could focus on hyper-local markets (e.g., village-to-village sales) and simplify listing (e.g., a form as easy as posting on Instagram). It could also integrate with local delivery apps like Gojek for seamless logistics.

- User Appeal: Vendors gain access to buyers beyond their physical location, increasing sales without needing advanced skills.

### 5. Community-Driven and Inclusive
- Problem: Centralized platforms prioritize big sellers, leaving small vendors struggling to compete.

- PasarKu’s Advantage: As a decentralized platform, PasarKu could emphasize community ownership—e.g., vendors vote on platform updates via tokens (a stretch goal). It could also offer multilingual support (Bahasa Indonesia, Javanese) and offline workshops to onboard users.

- User Appeal: Vendors feel valued and part of a fair ecosystem tailored to their needs.

## PasarKu Potential Sources of Income
### 1. Transaction Fees (Low, Blockchain-Based)
- How It Works: Charge a small fee (e.g., 0.5-1% of each transaction) on top of the blockchain gas fees, collected via the smart contract when funds are released from escrow.

- Why It Works: 
It’s much lower than centralized platforms (5-15%), keeping PasarKu competitive.

Fees go to the project’s wallet address, programmed into the contract.

- Example: A 50,000 IDR sale with a 1% fee = 500 IDR profit per transaction. With 1,000 daily sales, that’s 500,000 IDR (~$32 USD) per day.

- Profit Potential: Scales with transaction volume; low margins but high throughput could add up.

- Challenge: Keeping fees low enough to attract users while covering costs.

### 2. Premium Vendor Features
- How It Works: Offer optional paid features for vendors, such as:
1. Featured listings (e.g., top of the search results).

2. Enhanced profiles (e.g., badges, more photos).

3. Analytics (e.g., sales trends, buyer demographics).

- Why It Works: Vendors pay a flat fee (e.g., 10,000 IDR/month) in IDRX for these perks, incentivizing visibility without forcing it on everyone.

- Example: 100 vendors paying 10,000 IDR/month = 1,000,000 IDR (~$64 USD) monthly.

- Profit Potential: Steady recurring revenue; grows with vendor adoption.

- Challenge: Building these features and convincing vendors of their value.

### 3. IDRX Payment Incentives (Partnership Revenue)
- How It Works: Partner with the IDRX team or Lisk to earn a cut for driving IDRX usage. For example, a referral fee for every new user who buys or uses IDRX via PasarKu.

- Why It Works: 
1. Aligns with Lisk’s goal of expanding blockchain in Indonesia.

2. IDRX adoption benefits both parties, creating a win-win.

- Example: 1,000 new users earning a 1,000 IDR bounty each = 1,000,000 IDR revenue.

- Profit Potential: Depends on partnership terms; could be a one-time boost or ongoing trickle.

- Challenge: Negotiating a deal and ensuring enough new users.

### 4. Advertising (Decentralized or Off-Chain)
- How It Works: Sell ad space on the frontend (e.g., banners for local businesses) or create an on-chain ad marketplace where advertisers pay in IDRX to promote products.

- Why It Works: 
1. Ads are common in marketplaces and don’t disrupt the core decentralized experience.

2. On-chain ads could be innovative (e.g., smart contracts auction ad slots).

- Example: 10 ads at 50,000 IDR/month = 500,000 IDR monthly.

- Profit Potential: Scales with traffic; low effort once set up.

- Challenge: Avoiding clutter that turns off users; on-chain ads require extra dev work.

### 5. Tokenized Loyalty Program (Future Stretch)
- How It Works: Introduce a "PasarKu Token" (PKT) that buyers earn per purchase and redeem for discounts. Sell PKT to businesses or users for IDRX, or take a cut when tokens are traded.

- Why It Works: 
1. Encourages repeat use, boosting transactions.

2. Creates a secondary revenue stream via token sales or trading fees.

- Example: Sell 1 million PKT at 10 IDR each = 10,000,000 IDR upfront, plus fees on redemptions.

- Profit Potential: High if the token gains traction; speculative but trendy in Web3.

- Challenge: Complex to implement (new smart contract, legal considerations); not beginner-friendly initially.

### 6. Service Fees for Add-Ons
- How It Works: Charge for optional services like:
1. Dispute resolution (e.g., 5,000 IDR to escalate a case to a community vote).

2. Integration with delivery partners (e.g., a small fee per Gojek order).

- Why It Works: Adds value without being mandatory; users pay only when needed.

- Example: 100 disputes at 5,000 IDR = 500,000 IDR monthly.

- Profit Potential: Niche but steady if disputes or deliveries grow.

- Challenge: Requires extra features (e.g., voting system, API integration).



