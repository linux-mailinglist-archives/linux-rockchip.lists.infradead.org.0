Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3AEDE30
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 10:43:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=5PZgqRVeLSl8OS+tyIpuiF+yaraxHbAFif/bdXZ/1vc=; b=mf3YfW+wJWWG/y
	5uc3nLycfxd4harrEQWJvdI6F4Y1kYMyxhpwEm3SfUXxVGfa3bVa2kLCEU7J2iBTMW34qjyBoZXMx
	s4tN9lpbJn4TBkAp/zKe67gwZYoNES4TBooVYReIz4aaXyQp8BZ8GoKEdwNyIEYqA54J5VyfEDkKl
	77b5Z3G69JwI0Zb9Dqnpp9djefkz6+D/f4wvYKlNCFoNWeSi3xD1EurLBmFqX65DPrjXZeaZjVclC
	ZdQ71DpKhLoKP/j7+rzEm5edBzCE2GmjycJiExlXfXX/GlJLWik4xLj0n0UMBb4zbXNz6inRHeyF9
	m7dPrtEE81Pc2uGhQuYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL1t8-0002nR-GK; Mon, 29 Apr 2019 08:43:50 +0000
Received: from dc2-smtprelay2.synopsys.com ([198.182.61.142]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL1t4-0002mh-6l
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 08:43:48 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 08A55C00AE;
 Mon, 29 Apr 2019 08:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1556527422; bh=xI5h5MdXnhVD9y3tDSYGBQQ7Nsli3e4FTVtv6zWlr/U=;
 h=From:To:CC:Subject:Date:References:From;
 b=TccqouOdCMcNrMf7ERvNWy2BcFsOTPjlQ+MQ9FhllvuNFwdzVkS1cWVf0s2jUFWsV
 Zm0JdaRq6wJlOkAnwuHLz2RW7yP8CdkAGak4iIHpwkQk0OyC6CY221kSqAelNMEeAf
 /OB7p5n0lTVQSzB6A5TaRPNYdrYROPFAIFofdSyaW6nHHS28s3ZhIKaksNZ/Xp1OuJ
 QaK6a1GT6XD9J2BeYtBeeDtC+P9E+BoMXCpjj/a+PrOTHk1EiwJrhEiKoNbFMDJS+u
 D0H6ViypmhsGqncHDiak22z1bxH9dfu/WTqQWz/Cm0WvQkmcJrXMxGmFSGB4SyD8V4
 QAIJkU2qLvUAg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 11651A008E;
 Mon, 29 Apr 2019 08:43:37 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 29 Apr 2019 01:43:37 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 29 Apr 2019 01:43:37 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector1-synopsys-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cLtaK4dBkDbZZHaE01dlvd+2qLnST+ZXlz8Bal5/SMk=;
 b=IRpO70xdzfiCbg7qqRoA4bzq39hXrQxQi34IFxwU2E2MtmcDfIFYzNJaShjaBNxceh4iynShD/aFjvVeOullm7NmsaPwGoWuehNhimban/xx6/aXUf5Cg+bAA1/GPIJdA58VxieT0y9RFp28IO9Yy3arzPhsvolnoviD17c1CGk=
Received: from SN1PR12MB2431.namprd12.prod.outlook.com (52.132.195.146) by
 SN1PR12MB2493.namprd12.prod.outlook.com (52.132.196.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 08:43:35 +0000
Received: from SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f]) by SN1PR12MB2431.namprd12.prod.outlook.com
 ([fe80::1982:4b45:2adf:9a1f%4]) with mapi id 15.20.1835.010; Mon, 29 Apr 2019
 08:43:34 +0000
From: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>
To: Douglas Anderson <dianders@chromium.org>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 "heiko@sntech.de" <heiko@sntech.de>
Subject: Re: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Topic: [PATCH v2 1/5] usb: dwc2: bus suspend/resume for hosts with
 DWC2_POWER_DOWN_PARAM_NONE
Thread-Index: AQHU9XvT/eL2bASAskajIQu3Y3ICkw==
Date: Mon, 29 Apr 2019 08:43:34 +0000
Message-ID: <SN1PR12MB243108D1EF3239EC4F730ACDA7390@SN1PR12MB2431.namprd12.prod.outlook.com>
References: <20190418001356.124334-1-dianders@chromium.org>
 <20190418001356.124334-2-dianders@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=arturp@synopsys.com; 
x-originating-ip: [84.53.141.185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dece680f-3687-4750-9416-08d6cc7ec439
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN1PR12MB2493; 
x-ms-traffictypediagnostic: SN1PR12MB2493:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN1PR12MB24939235DAC2E3F6AE9AE470A7390@SN1PR12MB2493.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39850400004)(396003)(366004)(376002)(136003)(189003)(199004)(55674003)(14444005)(15650500001)(476003)(55016002)(256004)(9686003)(6306002)(99286004)(6246003)(966005)(486006)(316002)(52536014)(76116006)(8936002)(66946007)(66446008)(64756008)(66556008)(91956017)(5660300002)(66476007)(73956011)(33656002)(81156014)(81166006)(97736004)(8676002)(446003)(68736007)(102836004)(4326008)(478600001)(26005)(74316002)(53546011)(86362001)(25786009)(2906002)(7736002)(2501003)(305945005)(71190400001)(71200400001)(186003)(6506007)(6436002)(7416002)(7696005)(54906003)(229853002)(6116002)(66066001)(3846002)(76176011)(53936002)(14454004)(110136005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN1PR12MB2493;
 H:SN1PR12MB2431.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PVAMvAtIY6ExilWoGs9GVvpiTp0Lk50DV2PtMF4MlUqVQ4yxJPbyC1ka08CT3JzrnJESy/Pw7TDclDrjS4DTheOogy5RbnZpjnI6AAbkXnfAu7NujCRojC9BAEp+wNERk3HiM5Ong2Dy0uGl/ew9dkdiqcfHl+ktSvEB+cNrJHlf7mpxyQcq0Rl3JwwanFgYGVvkYMwNMxuIdDykT7vbnJrKxSKpaC5nnujCzjJOi+rcyLeANlSAwi/jm9RLwiwXIReKy8gUGAEHvJLB/wWqCEDOON50jCH1dXkEKkNTmZZy24FEj2QnAMtThiu1Ac6FVwnmGrbcpuG1YYgTUPch/vNXiuEspsxSGmQlP/Mj3Is61P/Sbulo8f9QoC3tN2TrfoFmblLkueGcTitFWyPiEg8EldwxijfKltreVaIU40Y=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dece680f-3687-4750-9416-08d6cc7ec439
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 08:43:34.8366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR12MB2493
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_014346_295241_50F00E32 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Amelie Delaunay <amelie.delaunay@st.com>, Randy Li <ayaka@soulik.info>,
 "amstan@chromium.org" <amstan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "zyw@rock-chips.com" <zyw@rock-chips.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>, Alan Stern <stern@rowland.harvard.edu>,
 Elaine
 Zhang <zhangqing@rock-chips.com>, "jwerner@chromium.org" <jwerner@chromium.org>,
 William Wu <william.wu@rock-chips.com>,
 "ryandcase@chromium.org" <ryandcase@chromium.org>,
 "dinguyen@opensource.altera.com" <dinguyen@opensource.altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 4/18/2019 04:15, Douglas Anderson wrote:
> This is an attempt to rehash commit 0cf884e819e0 ("usb: dwc2: add bus
> suspend/resume for dwc2") on ToT.  That commit was reverted in commit
> b0bb9bb6ce01 ("Revert "usb: dwc2: add bus suspend/resume for dwc2"")
> because apparently it broke the Altera SOCFPGA.
> 
> With all the changes that have happened to dwc2 in the meantime, it's
> possible that the Altera SOCFPGA will just magically work with this
> change now.  ...and it would be good to get bus suspend/resume
> implemented.
> 
> This change is a forward port of one that's been living in the Chrome
> OS 3.14 kernel tree.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> This patch was last posted at:
> 
> https://urldefense.proofpoint.com/v2/url?u=https-3A__lkml.kernel.org_r_1446237173-2D15263-2D1-2Dgit-2Dsend-2Demail-2Ddianders-40chromium.org&d=DwIDAg&c=DPL6_X_6JkXFx7AXWqB0tg&r=9hPBFKCJ_nBjJhGVrrlYOeOQjP_HlVzYqrC_D7niMJI&m=MMfe-4lZePyty6F5zfQ54kiYGuJWNulyRat944LkOsc&s=nExFpAPP_0plZfO5LMG1B-mqt1vyCvE35elVcyVgs8Y&e=
> 
> ...and appears to have died the death of silence.  Maybe it could get
> some bake time in linuxnext if we can't find any proactive testing?
> 
> I will also freely admit that I don't know tons about the theory
> behind this patch.  I'm mostly just re-hashing the original commit
> from Kever that was reverted since:
> * Turning on partial power down on rk3288 doesn't "just work".  I
>    don't get hotplug events.  This is despite dwc2 auto-detecting that
>    we are power optimized.
What do you mean by doesn't "just work" ? It seem to me that even after 
adding this patch you don't get issues fixed.
You mention that you don't get the hotplug events. Please provide dwc2 
debug logs and register dumps on this issue.

> * If we don't do something like this commit we don't get into as low
>    of a power mode.
> 
> Changes in v2: None
> 
>   drivers/usb/dwc2/hcd.c | 84 ++++++++++++++++++++++++++----------------
>   1 file changed, 53 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/usb/dwc2/hcd.c b/drivers/usb/dwc2/hcd.c
> index e272d020012e..978232a9e4a8 100644
> --- a/drivers/usb/dwc2/hcd.c
> +++ b/drivers/usb/dwc2/hcd.c
> @@ -4482,6 +4482,7 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
>   	unsigned long flags;
>   	int ret = 0;
>   	u32 hprt0;
> +	u32 pcgctl;
>   
>   	spin_lock_irqsave(&hsotg->lock, flags);
>   
> @@ -4497,7 +4498,7 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
>   	if (hsotg->op_state == OTG_STATE_B_PERIPHERAL)
>   		goto unlock;
>   
> -	if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL)
> +	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL)
 >   		goto skip_power_saving;
 >

"hsotg->params.power_down" is assigned to "DWC2_POWER_DOWN_PARAM_NONE = 
0" if there is no hibernation or partial power down supported by the 
core or power saving features are disabled by 
"hsotg->params.power_saving = false" , "DWC2_POWER_DOWN_PARAM_PARTIAL" 
if core supports partial power down, "DWC2_POWER_DOWN_PARAM_HIBERNATION 
" if the core supports hibernation

When you check "if (hsotg->params.power_down > 
DWC2_POWER_DOWN_PARAM_PARTIAL)" you are saying that "skip_power_saving" 
only in that case when core supports Hibernation. But what if core 
doesn't support both hibernation and partial power down and the 
"hsotg->params.power_down" value us equal to 
"DWC2_POWER_DOWN_PARAM_NONE" which is 0.

With this implementation driver will program entering to suspend when 
core doesn't support both hibernation and partial power down.

>   	/*
> @@ -4506,21 +4507,35 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
>   	 */
>   	if (!hsotg->bus_suspended) {
>   		hprt0 = dwc2_read_hprt0(hsotg);
> -		hprt0 |= HPRT0_SUSP;
> -		hprt0 &= ~HPRT0_PWR;
> -		dwc2_writel(hsotg, hprt0, HPRT0);
> -		spin_unlock_irqrestore(&hsotg->lock, flags);
> -		dwc2_vbus_supply_exit(hsotg);
> -		spin_lock_irqsave(&hsotg->lock, flags);
> +		if (hprt0 & HPRT0_CONNSTS) { > +			hprt0 |= HPRT0_SUSP;
Here you set "HPRT0_SUSP" bit but what if core doesn't support both 
hibernation and Partial Power down assuming that 
hsotg->params.power_down" value us equal to "DWC2_POWER_DOWN_PARAM_NONE" 
which is 0.
> +			if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL)
You make one checking of hsotg->params.power_down mode here.
> +				hprt0 &= ~HPRT0_PWR;
> +			dwc2_writel(hsotg, hprt0, HPRT0);
> +		}
> +		if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
another checking of power_down mode here.
> +			spin_unlock_irqrestore(&hsotg->lock, flags);
> +			dwc2_vbus_supply_exit(hsotg);
> +			spin_lock_irqsave(&hsotg->lock, flags);
> +		} else {
> +			pcgctl = readl(hsotg->regs + PCGCTL);
> +			pcgctl |= PCGCTL_STOPPCLK;
> +			writel(pcgctl, hsotg->regs + PCGCTL);
"PCGCTL_STOPPCLK" bit is set only when core enters to partial power 
down. So here if hsotg->params.power_down is not equal to 
DWC2_POWER_DOWN_PARAM_PARTIAL and is DWC2_POWER_DOWN_PARAM_NONE the the 
bit will be set.
> +		}
>   	}
>   
> -	/* Enter partial_power_down */
> -	ret = dwc2_enter_partial_power_down(hsotg);
> -	if (ret) {
> -		if (ret != -ENOTSUPP)
> -			dev_err(hsotg->dev,
> -				"enter partial_power_down failed\n");
> -		goto skip_power_saving;
> +	if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
one more power_down mode checking here.
I understand that those checking are to make sure that we got partial 
power down mode enabled but before this patch it was done with one checking.
> +		/* Enter partial_power_down */
> +		ret = dwc2_enter_partial_power_down(hsotg);
> +		if (ret) {
> +			if (ret != -ENOTSUPP)
> +				dev_err(hsotg->dev,
> +					"enter partial_power_down failed\n");
> +			goto skip_power_saving;
> +		}
> +
> +		/* After entering partial_power_down, hardware is no more accessible */
> +		clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
>   	}
>   
>   	/* Ask phy to be suspended */
> @@ -4530,9 +4545,6 @@ static int _dwc2_hcd_suspend(struct usb_hcd *hcd)
>   		spin_lock_irqsave(&hsotg->lock, flags);
>   	}
>   
> -	/* After entering partial_power_down, hardware is no more accessible */
> -	clear_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
> -
>   skip_power_saving:
>   	hsotg->lx_state = DWC2_L2;
>   unlock:
> @@ -4545,6 +4557,7 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
>   {
>   	struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);
>   	unsigned long flags;
> +	u32 pcgctl;
>   	int ret = 0;
>   
>   	spin_lock_irqsave(&hsotg->lock, flags);
> @@ -4555,17 +4568,11 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
>   	if (hsotg->lx_state != DWC2_L2)
>   		goto unlock;
>   
> -	if (hsotg->params.power_down != DWC2_POWER_DOWN_PARAM_PARTIAL) {
> +	if (hsotg->params.power_down > DWC2_POWER_DOWN_PARAM_PARTIAL) {
>   		hsotg->lx_state = DWC2_L0;
>   		goto unlock;
>   	}
>   
> -	/*
> -	 * Set HW accessible bit before powering on the controller
> -	 * since an interrupt may rise.
> -	 */
> -	set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
> -
>   	/*
>   	 * Enable power if not already done.
>   	 * This must not be spinlocked since duration
> @@ -4577,10 +4584,23 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
>   		spin_lock_irqsave(&hsotg->lock, flags);
>   	}
>   
> -	/* Exit partial_power_down */
> -	ret = dwc2_exit_partial_power_down(hsotg, true);
> -	if (ret && (ret != -ENOTSUPP))
> -		dev_err(hsotg->dev, "exit partial_power_down failed\n");
> +	if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
> +		/*
> +		 * Set HW accessible bit before powering on the controller
> +		 * since an interrupt may rise.
> +		 */
> +		set_bit(HCD_FLAG_HW_ACCESSIBLE, &hcd->flags);
> +
> +
you leave an odd blank line here.  Please delete it.
> +		/* Exit partial_power_down */
> +		ret = dwc2_exit_partial_power_down(hsotg, true);
> +		if (ret && (ret != -ENOTSUPP))
> +			dev_err(hsotg->dev, "exit partial_power_down failed\n");
> +	} else {
> +		pcgctl = readl(hsotg->regs + PCGCTL);
> +		pcgctl &= ~PCGCTL_STOPPCLK;
> +		writel(pcgctl, hsotg->regs + PCGCTL);

Here if core doesn't support both hibernation and partial power down 
and "hsotg->params.power_down" is equal to "DWC2_POWER_DOWN_PARAM_NONE" 
which is 0 then "PCGCTL_STOPPCLK" bit is unset.

> +	}
>   
>   	hsotg->lx_state = DWC2_L0;
>   
> @@ -4592,10 +4612,12 @@ static int _dwc2_hcd_resume(struct usb_hcd *hcd)
>   		spin_unlock_irqrestore(&hsotg->lock, flags);
>   		dwc2_port_resume(hsotg);
>   	} else {
> -		dwc2_vbus_supply_init(hsotg);
> +		if (hsotg->params.power_down == DWC2_POWER_DOWN_PARAM_PARTIAL) {
> +			dwc2_vbus_supply_init(hsotg);
>   
> -		/* Wait for controller to correctly update D+/D- level */
> -		usleep_range(3000, 5000);
> +			/* Wait for controller to correctly update D+/D- level */
> +			usleep_range(3000, 5000);
> +		}
>   
>   		/*
>   		 * Clear Port Enable and Port Status changes.
> 

I have tested the patch on HAPS-DX. With this patch or without it when I 
have a device connected core  enters to partial power down and doesn't 
exit from it. So I cannot use the device.

-- 
Regards,
Artur

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
