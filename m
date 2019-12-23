Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE13129380
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Dec 2019 10:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yk8ba+u9ByrtPZryE7T2BaKOUX76qbwlqOYDCN6JAuA=; b=jkuG/St4ceIttK
	7R5uYn85ly9h1YxkfT0Lg2tWHmvbdwkfyPh3ddA8yboYVMY669B/GkzSomUkitY5x28eAQs4Rt1rE
	Yvpi4U0lKaawxdiq9gretyL/pRIozNN8cn/kIIiOabwHHCWOlaP02NaBfal39dwf3QUwxlMH8oiGJ
	kjpy4DUyhmxDnCYAKXqxglymp+OIEQ+FUubqn0dgSJtRL+Q7+ITfQ2N5nyuRxkQruFuBPzsE4D2d9
	6P0p5rUblkXNHsWXz/BPhyK8WboZm6597qlLI1qsS7wp4YiPdeecgUMGH2VrAQihh0S6BdRP2thrZ
	55wZ/9SQDMLW8CSpw7QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJk4-0002tD-Uf; Mon, 23 Dec 2019 09:11:08 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJk0-0002s1-Op
 for linux-rockchip@lists.infradead.org; Mon, 23 Dec 2019 09:11:06 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 85DB3C045A;
 Mon, 23 Dec 2019 09:10:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1577092262; bh=hX7shpgTccywnc8twj72NX/Q1JW+Bz6pG/gkgdsD7+o=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=QdHxf/cVlmtlQmZIn91VCQPuDA6tMRYUf7ffwDqTlweyn/9/p7GFqlvErOzySsf/Q
 9z86OpIQ0Q6H0LhU3lsm8O+6gUXzovMCZFhMAcktjmVNKCP3vkikGZZK66LQDagzjW
 6kOn8xVhqOWCeHM7kYvQLIQjjQbSrNqGFK2wTgQF47PQdJHQNlpM0gPt5bd+Vpd8fR
 Enz5TydR78Wbd23afx5PwKXh5VBscmhBF9TgDNr5r7DTVMftgD5q/m3omuC0ZYGUbS
 YveOovCIHTSaCO3rsE0uChZE6ZO37hIz1/oSsSteCNtPY4OODiv7LVL7L28ZLLTC6B
 pYDlHfe8h2rOQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 54861A0079;
 Mon, 23 Dec 2019 09:10:54 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 23 Dec 2019 01:10:54 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 23 Dec 2019 01:10:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dgxddfKpPYc5Fnsq5bqTeIXjgE7hO8w4cs5EnkK3Nkt+BuREU6uGGHkcVi7HtOcBW+UEjEQMWy//8UJeeLGMAmiaboPfRgGi4IWxvNaFQvM/wkr4lwRCtNCbsyDsPZPEA/+TOfkkvO83rQgXcgCU2dIcyfkToHRuP0bgVxfgsOlbEbdm4tJRxtbI4S400Q6CicfryiTKRX6U7QCza4UP/53QgkS1C/ETGF5SrNm3MumpPZeDLg6ihlxaYtlbRb34zJPxODJxtfJoc2xRgFj/8sC/b6I03EkQ7q6uj0ud9G6XBHJMf20WY7pwiu1J0RyiFeMPmnad2E6YsYGw3+5fMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hX7shpgTccywnc8twj72NX/Q1JW+Bz6pG/gkgdsD7+o=;
 b=EfwLM66SBwSwCZGf5mN8h0RZPr+74AlNjBHfEQ96DlCrg+T3M6RndKZAOZSt2sYvxcgHBKcFFHpKgCIX3yy4orK35WnPXGvBQ+2Mr47LZdbLPCfO5PZW4cI0bhUXVJEKQcy4qSaJ0qtfRz/zhTj5A+10S7Qqk5LaigLtgfMM49VgpT7nr2ycHwqoGWkRvCANVAdZobhLg3FI6CsEJY/ya7hU3tsmu8GSOhgnma8yObhCbDCX2iIqcu+0GMruygOwem+ezdyC5ZMybzu9ooCS5M3aTU7u1T12b7mfo8myJ3tHHfHkUJdiIvMf4JHkBVCX29LO6mzprRVQklyQxVY51w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hX7shpgTccywnc8twj72NX/Q1JW+Bz6pG/gkgdsD7+o=;
 b=VP+cXv4zI1g08FLfcdknw7wD3LRzQFQ1XHMtWclT7ZWHoUTf5i1o/TPbpx5f0JQVo+zCOYgOo31l+M2aZgKVl1XbqI6S+9aUEolFQZpvlUC5hV207fbtWj8Jw7DJm/ZkDXs2L4jkrYUrXdIHbHaiQ5JrmN207ZWvLGecn2vYp9s=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3821.namprd12.prod.outlook.com (10.255.239.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.16; Mon, 23 Dec 2019 09:10:51 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 09:10:51 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: John Keeping <john@metanate.com>
Subject: Re: [PATCH 1/2] usb: dwc2: Fix IN FIFO allocation
Thread-Topic: [PATCH 1/2] usb: dwc2: Fix IN FIFO allocation
Thread-Index: AQHVtmBmfU6CbvSImkS5xZoCE5ywbqfHdPwA
Date: Mon, 23 Dec 2019 09:10:51 +0000
Message-ID: <b2ecd22a-63b2-1da7-3ab9-5a3eb423c07a@synopsys.com>
References: <20191219113432.1229852-1-john@metanate.com>
In-Reply-To: <20191219113432.1229852-1-john@metanate.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hminas@synopsys.com; 
x-originating-ip: [46.162.196.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ba625a4-bc96-4961-2fca-08d7878801f9
x-ms-traffictypediagnostic: MN2PR12MB3821:
x-microsoft-antispam-prvs: <MN2PR12MB3821494E3303DA98EFAE745BA72E0@MN2PR12MB3821.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(396003)(136003)(376002)(346002)(199004)(189003)(86362001)(316002)(36756003)(71200400001)(26005)(5660300002)(8676002)(2616005)(6916009)(186003)(2906002)(478600001)(91956017)(81156014)(66946007)(76116006)(66446008)(31696002)(81166006)(66476007)(66556008)(53546011)(8936002)(6506007)(64756008)(54906003)(6486002)(4326008)(31686004)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3821;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OdWOe1xjMiEpQj8sUFdIAxgezIvR+vQ8VuX7Z2TZiIMrUORdAaS0ctdZo0WO1+fHORavnUZBimdZYMG02BcCYdERS+g4hgRB3PyAFtlLWE00ukOPIWDp6es614sPOkiU7KdtJW8QdHsDu1NlgEZWkDEay0+jhxY9mBxf8U0ycjUYNT0Rm2/T+os6PCotktivg1M5kR+wkPjpOvDyX/vU0d8dIv21UIbS2kV9DaX/3mkHFn4GN/j51X/aJEATyANDhC+g3jpWZh+n8FyKwC3IkijJUoa1JUGD1oe2gtENPgN9Jes9ilCFsNneyX9ur/37SGQsV65L9k1hruoktLgP7Blr8Z0cbVgoMzxVGBon4jvtg3wednJCALzDKBUxaGJKvViuNXN8jInlEob8rfaH9eoI5LakAgcWjuB0ra4MF96K3GeVBIuJK0fJWr8lwazs
x-ms-exchange-transport-forked: True
Content-ID: <C665A604595EAE42A2E5DD49A3244268@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba625a4-bc96-4961-2fca-08d7878801f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 09:10:51.3718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZOZVRb5JlPEA98DEPsMn0jYvF4DcyyMUwsVeTVJbzyO+efU1VKQZtNmQBCUaw6/bZf/B6Gt16T5mJ16yTEY4/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3821
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_011104_937880_2EF19F74 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 12/19/2019 3:34 PM, John Keeping wrote:
> On chips with fewer FIFOs than endpoints (for example RK3288 which has 9
> endpoints, but only 6 which are cabable of input), the DPTXFSIZN
> registers above the FIFO count may return invalid values.
> 
> With logging added on startup, I see:
> 
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=1 sz=256
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=2 sz=128
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=3 sz=128
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=4 sz=64
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=5 sz=64
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=6 sz=32
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=7 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=8 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=9 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=10 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=11 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=12 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=13 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=14 sz=0
> 	dwc2 ff580000.usb: dwc2_hsotg_init_fifo: ep=15 sz=0
> 
> but:
> 
> 	# cat /sys/kernel/debug/ff580000.usb/fifo
> 	Non-periodic FIFOs:
> 	RXFIFO: Size 275
> 	NPTXFIFO: Size 16, Start 0x00000113
> 
> 	Periodic TXFIFOs:
> 		DPTXFIFO 1: Size 256, Start 0x00000123
> 		DPTXFIFO 2: Size 128, Start 0x00000223
> 		DPTXFIFO 3: Size 128, Start 0x000002a3
> 		DPTXFIFO 4: Size 64, Start 0x00000323
> 		DPTXFIFO 5: Size 64, Start 0x00000363
> 		DPTXFIFO 6: Size 32, Start 0x000003a3
> 		DPTXFIFO 7: Size 0, Start 0x000003e3
> 		DPTXFIFO 8: Size 0, Start 0x000003a3
> 		DPTXFIFO 9: Size 256, Start 0x00000123
> 
> so it seems that FIFO 9 is mirroring FIFO 1.
> 
> Fix the allocation by using the FIFO count instead of the endpoint count
> when selecting a FIFO for an endpoint.
> 
> Signed-off-by: John Keeping <john@metanate.com>
> ---

Acked-by: Minas Harutyunyan <hminas@synopsys.com>

>   drivers/usb/dwc2/gadget.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
> index 92e8de9cb45c..911b950ef25e 100644
> --- a/drivers/usb/dwc2/gadget.c
> +++ b/drivers/usb/dwc2/gadget.c
> @@ -4059,11 +4059,12 @@ static int dwc2_hsotg_ep_enable(struct usb_ep *ep,
>   	 * a unique tx-fifo even if it is non-periodic.
>   	 */
>   	if (dir_in && hsotg->dedicated_fifos) {
> +		unsigned fifo_count = dwc2_hsotg_tx_fifo_count(hsotg);
>   		u32 fifo_index = 0;
>   		u32 fifo_size = UINT_MAX;
>   
>   		size = hs_ep->ep.maxpacket * hs_ep->mc;
> -		for (i = 1; i < hsotg->num_of_eps; ++i) {
> +		for (i = 1; i <= fifo_count; ++i) {
>   			if (hsotg->fifo_map & (1 << i))
>   				continue;
>   			val = dwc2_readl(hsotg, DPTXFSIZN(i));
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
