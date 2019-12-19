Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70CC12623A
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Dec 2019 13:35:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZP8fGG9evyIpnn1/hUSCuYTKzdd9gwc44HOJbYK8XYI=; b=qbjezZIa0JC+id
	7hmVtK0Ohqsytr6Vl41KoR4smWhI8SiOC/BZtsfPznZ020Ru4kcyAegqZVtuFYhjzMV2jxeRMLrej
	RXUX/yzmq4qTmcogQEkP4ZysBagTaHPHGuc10CaZUv2JyhImaWEUCBi6OJglGOJHftMjp2iASs8S/
	+SLx6nxr9inePtB4nvHvIRDv6iXMziZAm+kdIrGVoYzgZabEGZA0CbswAuwT5XuhdDM9q2KU3xZK3
	98oFv09vxO4c1EBcx1fIT5eBOLCbJ3+loiRqm1R/cY16YzrH+V0dPdwATlNy4n9NSHIE2blSYlAee
	4FeHuVe8zqhq+S0Djz/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihv1b-0003a8-DD; Thu, 19 Dec 2019 12:35:27 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihv1X-0003Zh-N8
 for linux-rockchip@lists.infradead.org; Thu, 19 Dec 2019 12:35:25 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 032B6405CE;
 Thu, 19 Dec 2019 12:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1576758922; bh=q9nSCLKN+ybg3Iv5RrQnpSwQkN5PK6SW3QQlu+40y8Q=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=ijzysRJnM3KoTw11JgnW/Lheka3u1nZvAzRtgPam42AWw6G6o0gFHBynITZJwOeYZ
 5sUS0G/o62LvfN7b5g3xuW7gp0q0/rFzZ9n/zZTMoeBJw6M+Da/X21C9j9hAO3wPE1
 Zow/7OV2mvJDhd1eNEVwJyLZFRS540jxz96N/FQLBLpR7w13Nm0uNPMcSinZibzbg/
 WEVHlh4YmqvaSmpH3D9DXFvHvkwrVxLBwKHPc2KOeyTumNIV/8hhKqM2u0GEt8aqfV
 COEOZQvItgYZ8FFaRQs9vJ3h7gSS/RnpNp5eXCTxL552SRny6sHEEyzH1yWWdHy9F+
 fiW9GMTtt0uxQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 8175BA0067;
 Thu, 19 Dec 2019 12:35:19 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 19 Dec 2019 04:35:02 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 19 Dec 2019 04:35:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNqUnUo6nSGxU8c4DLIchKTSnNIv8Jbhy3+/+bvLpytaGGm8gycZbAZhP2IehVy9aSR71Sc+CylKA8Y+XJA5J7SJvesu89AkBkTQtmrqk0hP0qBp0XNZ0BLe+3Zcx/FDEtymU36bTdVtyYcM3fsC+mkyZlIqhF7AvmD9GgH+GoPq+C8G+OnMDQMUZHWnU14lTXdHoaSqc3y9yMsl6V5uqrdGa18ia1bW+k9KlFaav0VVuK91ggQjeYYI5m5jHoVYJyMZ966ES3QKD/o1ohyl2KiSWhPw7miOQI4fuYofMgHefeNzOxuSlBGNyd7IuK3o8smZIKJrIuXGa4IL3ZZpsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9nSCLKN+ybg3Iv5RrQnpSwQkN5PK6SW3QQlu+40y8Q=;
 b=BCE6kdljgXiNS/cI8qTRbDr0HolzGKuMFt4Q0q/lcoCygvGb7ESZ0kCLwM6nfwhhDnmVs1JsvZz71p/ZshUChrt3gqhv/jC5atRcyHBpaQoIf+P8CyCp3yCoqNZf1vdiQ0TcU7Y/VN7wgADsks4v4ynpUVLSZYVpA0QhvEN+12rEntqyvTj0A9Awhy7Lygb1vbDUmg8+pizPrldnId3GiQbVr89f6mMk3hJI73pOi3E8QeF5mRlvJPQclm6NpNabXilEFjDnP6PGUSEYNOaofde/czUAyAkDt26nqLTEwbTHwSPOWFe0Juq37vJKoF792O3NVZQMf7oukQqB56rlkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9nSCLKN+ybg3Iv5RrQnpSwQkN5PK6SW3QQlu+40y8Q=;
 b=hb22uj3EjAWXY4l0Nhj9Iq7fFW6fz6z4xI4inuxKB0JclDlFe4oBCoZ56hOO3r2jvIgDIC1selULcESeVrf1LqQc3MnLxb2FDDmgNZZ4Wsx5D2z357/hl1oPDxLB8hp2TNg8k79pqd8XanKWTSyxtTylziF1zq+m/h/vnRam9yA=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB4160.namprd12.prod.outlook.com (10.255.125.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Thu, 19 Dec 2019 12:34:59 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb%5]) with mapi id 15.20.2538.019; Thu, 19 Dec 2019
 12:34:59 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: John Keeping <john@metanate.com>
Subject: Re: [PATCH 1/2] usb: dwc2: Fix IN FIFO allocation
Thread-Topic: [PATCH 1/2] usb: dwc2: Fix IN FIFO allocation
Thread-Index: AQHVtmBmfU6CbvSImkS5xZoCE5ywbqfBZLEA
Date: Thu, 19 Dec 2019 12:34:59 +0000
Message-ID: <69ae7364-391d-6075-27d8-7ed7c4aae2ff@synopsys.com>
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
x-ms-office365-filtering-correlation-id: 70f98fff-6926-43b6-f6e3-08d7847fdcb2
x-ms-traffictypediagnostic: MN2PR12MB4160:
x-microsoft-antispam-prvs: <MN2PR12MB41603F65379453B24489297DA7520@MN2PR12MB4160.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0256C18696
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(346002)(376002)(39860400002)(136003)(396003)(199004)(189003)(6506007)(53546011)(6916009)(26005)(36756003)(76116006)(31686004)(66946007)(66476007)(6486002)(478600001)(186003)(4326008)(8676002)(8936002)(31696002)(86362001)(81156014)(81166006)(2616005)(66446008)(91956017)(316002)(66556008)(64756008)(5660300002)(2906002)(71200400001)(54906003)(6512007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB4160;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PMDta/CiIX8t47/Nw1RMlM8IBmGJfMt77xGE8M6hvNEL7nLzyMyLWXtnnpDM9D5uFuBX9BtwOY+rvyt1ZgpMaOrf2PnGBDuSns+MnL5Zn8wSWcZWnh7QsJqGJm4rkqlOD7nH8yri1zAhezGUXu8xFqIYDBiIorlyfGmDrLdZX1U+YAvXyyVq6v5wZDFwq+IJiBU3e3wxMZYJSQuKjmQah+iotc1lZleoYoksymDrrKAOhwhLx5xVYmji1U8OA1RHmHuMw9UBAl7vWTRSK3fzqmGxSTdTeTpN0GZb1BnPO1EKKbvJS9mN9jN85AvWkEY3VvpP94qvXFE1AuGL2U5pSAdW6n0Z4wM95aIKgJhKMIutiB+099QJf/afasgGK98NncDTWuA5HV4q6SZENYcimB4oDU/RVQgEdRHiBvlQBzRezf+wkghxC3Ncfsvtgw5O
x-ms-exchange-transport-forked: True
Content-ID: <B924C74AF17F794BAA77285C93C9EFC6@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 70f98fff-6926-43b6-f6e3-08d7847fdcb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2019 12:34:59.3319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xYR3IguHrlotNSx9SQ9bnnmLRB18/SV8dJIjiyzjDOhfawb+4A60e74xOwdbHRDEFk4hPpaRe5c4IsRbWXzQbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4160
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_043523_903084_91441F85 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi John,

On 12/19/2019 3:34 PM, John Keeping wrote:
> On chips with fewer FIFOs than endpoints (for example RK3288 which has 9
> endpoints, but only 6 which are cabable of input), the DPTXFSIZN
> registers above the FIFO count may return invalid values.
> 

RK3288 (rev.2.2 Mar.2017) databook says:
- Support up to 9 device mode endpoints in addition to control endpoint 0
- Support up to 6 device mode IN endpoints including control endpoint 0
- Endpoints 1/3/5/7 can be used only as data IN endpoint
- Endpoints 2/4/6 can be used only as data OUT endpoint
- Endpoints 8/9 can be used as data OUT and IN endpoint

6 IN EP's (incl.EP0) mean that TxFIFO count should be 5. For EP0 using 
NPTXFIFO. On other hand 6 EP's 1/3/5/7/8/9 are IN endpoints.
Something not clear to me. Could you please provide me your HSOTG core's 
GHWCFG1-4 registers values.
And/Or provide me newer databook.

One more stuff. You didn't send patch series cover letter ([PATCH 0/2]) 
or I didn't received it?

Thanks,
Minas


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
