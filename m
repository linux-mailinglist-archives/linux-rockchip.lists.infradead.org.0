Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3A9165818
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Feb 2020 07:59:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oirvy43YJYQ40ve01uWwll0of5aKSonnN8LkYFZu758=; b=ZF6FUa9rI3FuNr
	MV4Uk0EPe2qee6EnGBs90pa97DlbnG3xGSpA9XeQKp0SlbuFpQEymwMZ3ktAHLJ3KfE71O2fThuC+
	qBVtZk0qzpyb+Yc6W1EJTOaWU4gqWrCf3Wu4GCLvYcGs7nFPlAq99KQQeUQpGmdiCAPD47xYU7YXk
	3N3F6QBymIcLhr40bjIbjqZ9e4fnuS0u9qP3MMJ5vI/MotIKezjJsq49TIK21Amz0xObzuMi98nfv
	e96OlF0cayTRRp2J2Z6GV2NZYFxMcfGh4sxQjuhtdk9p2WtyIuHamvZ9BclghCzeP2eOMftxh0zK7
	RqKD3CJuUZt9eYF4OfyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4fnk-0000Kd-SP; Thu, 20 Feb 2020 06:59:12 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4fni-0000Jn-0J
 for linux-rockchip@lists.infradead.org; Thu, 20 Feb 2020 06:59:11 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id A7F29C106E;
 Thu, 20 Feb 2020 06:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1582181947; bh=oCK24gEidqX/vIaX4VybaTgxY5DH4BJpI469po/dAoA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=d6i/e3Q+qhF3Du4sBfdfiVtae38Ncorh2hLlKseVdzOhKH3uKWIHpwS67u3wN80PL
 nLwuzusduTNevPP2Hbr3FvS0StlDKcEQ/wcbkEo5Vzc2pd/zleRuizQdmBoS61N4B6
 CaixBXO6yNwwNqIyvFUyLsfpY3eQn7bgAi1qBrZKLOi/9NmCC1mnC32Ja0xjnhW18R
 YclzzhX0AVg8nNJ9WQoADL1YAECuEc+GsFJzzoRZOW/iP8Vslx8kx18AD061euOYBM
 WIH+CCe4AH9Qe0ih532+cgYrrlcy8lfH5Udc5MnjzOp0uiTRgXUCLKcT+HyJNhrZsc
 kcZNiMZ0QwZpA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id CC2FDA00AC;
 Thu, 20 Feb 2020 06:59:03 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 19 Feb 2020 22:59:02 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 19 Feb 2020 22:59:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1dgCvxXfz4jPJcgK+5AiQDtJ8cMdbnSiGG+vu9FnAoJmEtKxbYwO0GFODJ45V4eadMWJY7CctRNG0CmkSdD4nxNanb5QlWXYHg/DAWXTl7DpUJZftsCFng1QV3Fr512qqbr5iFqyGmC5YBSBcTAdHyBPjM/HEhXL/LbCQKhvnDymPDX06aRXVTwRAzAZQVT7eFeVwWNrv2VQrOpgjLLbqcZY/cOK/idrM49CGXAv/UfugcD+pcMrIxZc1c3I8lfodS1qy9dlumM2ACQ5UzENZ2O8xKawEwpWHJ9L9xtQKcn5cO/KKN4znkJ7jQjWbcma/dLl21AUJgBClkdW7FeuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oCK24gEidqX/vIaX4VybaTgxY5DH4BJpI469po/dAoA=;
 b=Bd4kxkl81VRCokLjjS7AMpNeahwXZ7Fj75bBxWzT1T0J0muOQfneFKKqz058nIMBAgSAD7uJDe5ejckLh46zS0gEvMDcdEmr4Xamv36jCWRH2iMmBwPhjfQeSrtQVL/Ar2bcCQRa8+j2IlTDdJ1L8U/rzBs6zv6j1IaznAzo5HDBculfNPBKTiM8euvQxOLQvbmeoRndb+zUJDphlrJ/SS4yA/JCrZ/vVoI4TT24mhzIQKPnuVkUDGv+c+Aqnd2AFgK1x2ZVU294T8thb2QrGy4veTruqFThwQfbSXHf6eP69akruSAtKlWkgHHk5IEsj+Bo2oLG9gWaj1KeakFIcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oCK24gEidqX/vIaX4VybaTgxY5DH4BJpI469po/dAoA=;
 b=hM5PXgngUZyOCLP4hhWTE16TiXGYoHPZHYfowE1j+DSfFDQ8p2fza56SEzyT68gzo+yIrLNrkZzniVBOuR7l3NIoopvs92JimI/ZoEgIgbdkhDcCh8P/EhpZB8iKIioKmaTCBeII4bbJlHd0NRVWn4i3vDuU3ROj7LCyUKhsLtk=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3264.namprd12.prod.outlook.com (20.179.83.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Thu, 20 Feb 2020 06:59:01 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2750.016; Thu, 20 Feb 2020
 06:59:00 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Topic: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Index: AQHV4zxylJsWeUZ0JUKEDMOhhpCodKgfGkgAgAA7cgCAAA+HAIAAbA0AgAKn7gCAAC2+gIABCQCA
Date: Thu, 20 Feb 2020 06:59:00 +0000
Message-ID: <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
 <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
In-Reply-To: <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
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
x-ms-office365-filtering-correlation-id: 620b363f-83e2-492f-1b42-08d7b5d25ce3
x-ms-traffictypediagnostic: MN2PR12MB3264:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB3264BC3C93F42103E3546435A7130@MN2PR12MB3264.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(136003)(376002)(396003)(39830400003)(199004)(189003)(2906002)(5660300002)(31686004)(2616005)(966005)(66476007)(64756008)(66446008)(91956017)(66946007)(478600001)(6512007)(76116006)(66556008)(81166006)(36756003)(81156014)(8676002)(71200400001)(6486002)(8936002)(86362001)(110136005)(54906003)(31696002)(316002)(4326008)(6506007)(53546011)(186003)(26005)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3264;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IlFA93KDcaKKTeUAqJ+3aIu7AfTHF+h/f0aDMn9jHrExTLyMw5gUsyis3ouay9FMPp76+xAqsSq5FABbXP4y/o1m0116qo/D3yZWlOwmyx7YxabIfjy+gXDf0ciV39oYf3KnQZdyoyunZaeYuHV6ikCwCHO88irjdBGsnT16GqA6pYWMVqRx6vVRAlMfNwlbXDhPoaekeirFiazHyKCQc/P4l2BiWLdWBLNuZzb5G1LwslHu3pW8FmKKEwUHs36jGMRATZnPM2mZ0cD0x+6SSNZgpp2ZLQRVgIZKKHvF3CpSaGx3TVGuChvzVod7Kd1EjQrBC7Q9KkS7OeeYrjnZD0zPMiMm3oobr5orae93Q6wHS+VbRP9pL1eddUckqrRsGLMCT8mYiXcYOHDTTr8B1eLEH84RtW9boOv6u4iTJ6IeOWmdn06msZC4k7o42gxjca9lzfRrEVZ+DW9mt0qM1JWiFfuur1RhnvKdxK5AEdYmUJlnW5yiO/3yVOmXM1ol8uejm72tS71fd4NulKhiitMOBs3U+LRSKSZqGGy4k+jIePVlma99POwrJINFqjg1
x-ms-exchange-antispam-messagedata: 6eyFDOuX1NHLLsr0+Bc6azG04unycV5Fr18zAXg6nb3cgYYsGAhrb+VcgpPuAyKBFG7VyuKECEQqbDdtAv+HARyn/jbNlp1FFl3AeRXNCE6XOvIDxTf72l/rYZXg7bMV3bw5W0DcrlYZTRMaVrKnOA==
Content-ID: <A16150286B7E9F479217619807D79E2F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 620b363f-83e2-492f-1b42-08d7b5d25ce3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 06:59:00.0350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VE69EcuwMm8W1kJn5mR1w1hxFU3M4BPONNzSjvaOP7ItR2mvkotBmc1xHeUb7nM1pocvm8UYYk7QDg0U5jMEAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3264
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_225910_159430_419CC973 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Otavio,


On 2/19/2020 7:10 PM, Otavio Salvador wrote:
> Hello Minas,
> 
> On Wed, Feb 19, 2020 at 9:26 AM Minas Harutyunyan
> <Minas.Harutyunyan@synopsys.com> wrote:
>> On 2/17/2020 11:53 PM, Otavio Salvador wrote:
>>> On Mon, Feb 17, 2020 at 10:26 AM Minas Harutyunyan
>>> <Minas.Harutyunyan@synopsys.com> wrote:
>>>> Enable debug prints to get full dwc2 debug prints to see what happen
>>>> with dwc2.
>>
>>> [ 1054.529774] dwc2 30180000.usb: ep0 state:0
>>> [ 1054.529785] dwc2 30180000.usb: dwc2_hsotg_start_req: DxEPCTL=0x84088200
>>> [ 1054.529801] dwc2 30180000.usb: dwc2_hsotg_start_req: DXEPCTL=0x80088200
>>> [ 1054.529928] dwc2 30180000.usb: ep2out: req 26bd9b9f: 512@06b7dbca,
>>> noi=0, zero=0, snok=0
>>> [ 1054.537095] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
>>> (d88c3cc4) retry 8
>>> [ 1054.537119] dwc2 30180000.usb: GINTSTS_ErlySusp
>>> [ 1054.540147] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
>>> [ 1054.540172] dwc2 30180000.usb: USB SUSPEND
>>> [ 1054.540191] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
>>> [ 1054.540211] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
>>> Optimize=1 HWCFG4.Hibernation=0
>>> [ 1054.540242] dwc2 30180000.usb: dwc2_hsotg_irq: 04008028 00000000
>>> (d88c3cc4) retry 8
>>> [ 1054.585402] dwc2 30180000.usb: ep1in: req 01eff31b: 353@bf8d62d8,
>>> noi=0, zero=1, snok=0
>>> [ 1054.585422] dwc2 30180000.usb: dwc2_hsotg_ep_queue: submit request
>>> only in active state
>>> [ 1054.661667] dwc2 30180000.usb: dwc2_hsotg_irq: 04008428 00000400
>>> (d88c3cc4) retry 8
>>> [ 1054.661694] dwc2 30180000.usb: GINTSTS_ErlySusp
>>> [ 1054.664715] dwc2 30180000.usb: gintsts=04008828  gintmsk=d88c3cc4
>>> [ 1054.664741] dwc2 30180000.usb: USB SUSPEND
>>> [ 1054.664760] dwc2 30180000.usb: dwc2_handle_usb_suspend_intr: DSTS=0x5ad801
>>> [ 1054.664781] dwc2 30180000.usb: DSTS.Suspend Status=1 HWCFG4.Power
>>>
>>
>> Actually, I don't see any issue with dwc2 from the log. Only not clear
>> why SUSPEND happen hear. Is it because of disconnect/connect or
>> reloading g_serial?
>> Is this log recorded when issue seen?
> 
> Yes, the log was recorded however we did not reload the g_serial
> module. So when we gathered the logs, it was stuck.
> 
>> Anyway, before SUSPEND and after dwc2 successfully perform transfers on
>> all EP's - ep1in bulk, ep2out bulk and ep3in interrupt.
>> Can you provide dmesg with dwc2 debug prints with exception case inside.
> 
> The log I sent was taken with:
> 
> 1) boot device
> 2) ran 'dmesg -c' so we cleaned the old messages
> 3) cause the lock up to happen
> 4) gather dmesg output
> 
> What sequence do you want us to do?

Yes. Can you provide also USB trace?

Thanks,
Minas


> --
> Otavio Salvador                             O.S. Systems
> https://urldefense.proofpoint.com/v2/url?u=http-3A__www.ossystems.com.br&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=LRZmjUC_RsqI1Ky9A0SkfCqicsDkCoHnGnXttwUlXec&s=815r-d3BXkFFJtIB2EQ8OA2fcr6ooNEpbYfvoARbD3s&e=         https://urldefense.proofpoint.com/v2/url?u=http-3A__code.ossystems.com.br&d=DwIBaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=LRZmjUC_RsqI1Ky9A0SkfCqicsDkCoHnGnXttwUlXec&s=O1psrp_ccT1F6H678r50HId1cWn6g8UxKWstZ_kBzO8&e=
> Mobile: +55 (53) 9 9981-7854          Mobile: +1 (347) 903-9750
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
