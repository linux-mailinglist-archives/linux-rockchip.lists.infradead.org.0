Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29167173374
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Feb 2020 10:01:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1FeOE3asf3gQxOHeBAI2+384naHd/vzaeYJVIXruq8=; b=n6hQ3ikjtdzMue
	3G/imvzEpTxT5pyXSjQJ3YpeovWTGYuuF3EHBQIGhdphqFeA91ORibIiFblw9Xx4VZlr/r6D5Pxap
	FfH2zo7qUaFPb19YoV731ZOYTrj8CtOg5pzdce1SAfpyBmDrISEJVgHnC762+i0JxtK2O7Wok8QdT
	E0aNczI5dNHrXCrkBdHmam2qUuXYusEzIxsZBOQbmkBwCsZ0bgPt7GfFIU8LnLc5LonVXj25Q3sgN
	wGdDbeEFbKsK3mMLiopS1+z1dI1XOEq3ASVMM78Wbn0uzH0qgVEvqM08KfLe57sX1EKY10xlYfbZm
	CM+P2yytudPH2x8joaZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bWg-0004He-1p; Fri, 28 Feb 2020 09:01:42 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bWd-0004GO-1K
 for linux-rockchip@lists.infradead.org; Fri, 28 Feb 2020 09:01:40 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id BFF7D43B2F;
 Fri, 28 Feb 2020 09:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1582880492; bh=WgH3kMAhl64jigrPdYG2prvkhMnDhPX7KwFIB/HubIU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Je0xz7bO80HIgbOXJkIXMTn5SdAC23Zl5nLYBEeP6X0gYb0C+kJMZhLcqdMhGF0wn
 wr2qA00T54My9ddktlmE/imUpIVn5GGALxV2kVph5ldbBHULSXG0H1cSnrEULunShy
 dJyJrnCbMMYO/UV7r86aw80ygYhOrLnY3nrK1B8vxl0q7R2g0JAeLmqjeVnpnGa/sj
 xOQn90vUX8oZYvP5To1LTQ+WnHoc0ICjEaeXjbT20d8BW1bc2YNQ8Tumw/UIdrYMy+
 maMK5AWLtFk9P3YUj7t0zMk201Me32EwK1ME8uff+ht/TPaaZAfNTDrwxlpfh+nznE
 4WMJ/wxdkN4NA==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 87E82A0079;
 Fri, 28 Feb 2020 09:01:27 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 28 Feb 2020 01:01:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Fri, 28 Feb 2020 01:01:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Umu2Eq9A3DOm4239y+PYJ97maF3OCdiwp8ivYyZo8PhGyJnEUjV2aPF6WbAR9wO3V54ibe0WQLw9Wyi24OwrJw3OquPdbHwU3w6BBvkkSE5NGT53Dud/pfnZle2QNzrrGumRC38z0pE+rapPdWM2HY0cQyfJ6mk95OoYoJdTaErSgehj3+xT4+jB01+dHd/pa3ocdpvdmxOIx36GF4SMd3tK1RyWpDHTcElmakIzoiX/p5MhTpk526cw4lZiTEXfW8HzYazh06ItSgakaT5gH7tVYTPMAsO6QH2rzdRIae0oUSCxfu0pxnvsZnTbqrIh6j/n2LT2rI+CDZoxA24T+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WgH3kMAhl64jigrPdYG2prvkhMnDhPX7KwFIB/HubIU=;
 b=QkLJcAi1uOt9sqZx0ZWUxoVicd8WLaXFf2QNKM08ZJKjUMNJrkGUBGixdR7dONGyp0nsaSf9QPuEpaYoltDxgoip/u7KbutM4ssty9FVpVJqe/ioms2CrT0v0jBFCFBCMDNoaIEEqV4+1689Y953PsBv3QTahjAr0O4Vc64ngp+zdI+9IVqO7NQNgdGIId60o/n/77X/ufpICg3INPKV/vbSdrygarg2S0jO3mMGmofKIxLgVPf4W6s+91G9FyJ14URT7FXisd08tfxLWhXeJV4gxO8jA+JvAJcfgQbjfH44wcZpD95LHNNORV6Qstjv2KldHL0Lafm9NU2OUupvYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WgH3kMAhl64jigrPdYG2prvkhMnDhPX7KwFIB/HubIU=;
 b=LpycK9a7tptuuJ+cxY3YRKkBxLVIbAUyojsw6P2Z2BnNfS29NYIdEYzSbywDiG7oW+cdyiBEPt4dCtFa4FopbNEnjF8TZBQQkRE/Mq3xZXzo68thin26tWZEt2Hj/J2wa8DDx6YsLwZ/vsPgZXVhWfNKpxkfmvtUtciUKRQGONo=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (2603:10b6:208:198::11)
 by MN2PR12MB4221.namprd12.prod.outlook.com (2603:10b6:208:1d2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.16; Fri, 28 Feb
 2020 09:01:26 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::111c:5382:5a76:21cb]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::111c:5382:5a76:21cb%4]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 09:01:25 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>, Otavio Salvador
 <otavio@ossystems.com.br>
Subject: Re: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Topic: USB DWC2 stops responding when insert/remove cable multiple times
Thread-Index: AQHV4zxylJsWeUZ0JUKEDMOhhpCodKgfGkgAgAA7cgCAAA+HAIAAbA0AgAKn7gCAAC2+gIABCQCAgABpVgCAASdLgIAAeQoAgAAARQCACqrrAA==
Date: Fri, 28 Feb 2020 09:01:25 +0000
Message-ID: <665fe49e-ebfa-bcb0-fcd1-ea1e9252b306@synopsys.com>
References: <CAP9ODKprPi8N-dU8NaKwneXH-3b0ipSEDpU5mDbGntxuyhGhJw@mail.gmail.com>
 <41a7bfe7-54b1-84eb-091f-469d971ab968@synopsys.com>
 <CAP9ODKoUH=Cc=uuhfaUy7fkSVdfBHhX-6oS9_hi3Wd6GgDiZYw@mail.gmail.com>
 <ee47be28-ba9f-750f-65d2-51a722ce291d@synopsys.com>
 <CAP9ODKqa_4NSsFMUpyFDt3ohgGBCMgbOyKaVjYfSjmcZLmmC+A@mail.gmail.com>
 <380d765b-8867-a899-b67a-c016c09fa27b@synopsys.com>
 <CAP9ODKqL_GN+iebL3wPX_9fEUtUVP8Ahv03yJ1R-JLDr=Cn0BA@mail.gmail.com>
 <beddbc55-fd22-96b7-c980-e4ea207a42f5@synopsys.com>
 <CAP9ODKq2nEHz_rbwwCv-94LSBOq0it2Kc4yhCqrLT-XxoXommg@mail.gmail.com>
 <1d2ee918-57e4-53b2-6953-0107d7720c59@synopsys.com>
 <CAP9ODKoS5KQrhTrUvahHEhQG-WA+bfLnP4tTFxzrQaGh1nTcZw@mail.gmail.com>
 <CAP9ODKoRuB-nyjr1ksGU61PVMjFTMMWKwgpHQ=e7bChAu5Okhg@mail.gmail.com>
In-Reply-To: <CAP9ODKoRuB-nyjr1ksGU61PVMjFTMMWKwgpHQ=e7bChAu5Okhg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=hminas@synopsys.com; 
x-originating-ip: [46.162.196.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c3ec7a1-02dd-4f36-e1ef-08d7bc2cca90
x-ms-traffictypediagnostic: MN2PR12MB4221:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB42215271867F841CB9D29E7BA7E80@MN2PR12MB4221.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(136003)(396003)(39860400002)(346002)(376002)(199004)(189003)(478600001)(6512007)(31696002)(4326008)(186003)(76116006)(2616005)(31686004)(6486002)(91956017)(66446008)(86362001)(66946007)(71200400001)(66556008)(64756008)(66476007)(6506007)(53546011)(8676002)(54906003)(110136005)(36756003)(8936002)(316002)(81156014)(81166006)(2906002)(5660300002)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB4221;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7wsddcjBJ+D+6IElq8QlocAeLAJIsa2KtUDFc3UQkN/QNTYL94hZtOs/6l+GCV8Qlg79e6XUpbFgT1x9u1QgTmFM+3JmFWWPU2L851+cTJStJUqH2/9hjBXRpYp37RYWJ9xgHkErzstXq90YJ8hEhw18IzFGXuhZLE9dctq4JYSZ9Wr8LHj64QOe4YXkFIy++55S8WAD+F0egiJvVAL8Q3aF1+pYEvr7kP8fVIJ3Kn3LkwR68J7m3IBoCtvKeN4eVvTkSOm9qjAoE/8cD46+MP2Hq6goxqIoVxRr2yZ9iht/dRE7J5gyKjV2c/9wKgIHzd+IIYP4urzUeLk6OU79fM3yAh5xwHa8O9o4Xt69qgT7lWQNNVoah2Lsyi82y4n3V78gPZmJUBB4Qbcrox8MOkllrB/kjkJI3CQiwuqAbiRVjkIkw4nfpeS07r9rexUj
x-ms-exchange-antispam-messagedata: K9U2DCWzcqzEnpAX/uvwLS3EAC0JkskVRpb/7adF90bn5+pKkgqSNPGob9bBRMvJ3gjkkzuJapfKwe4L9FVa3Z2hjHFmyhP8YGTWmeQneQP4ac3Glj6SBgyhjdXr4X39H25e8N3YqkX5Ot6jSqN69Q==
Content-ID: <CC6672F8B8E35B4AB64A7C8A0F3DA21E@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c3ec7a1-02dd-4f36-e1ef-08d7bc2cca90
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 09:01:25.7169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zmz30U3adeW77Z5ftUGSfvZKoBkuau9MKHHYsYW0c4x2QPYTQ4K3k17D4MxdqiScKoYkQzzVx8XM0fPD1bQZwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4221
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_010139_088271_209C694D 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>,
 Johan Hovold <johan@kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Otavio,

On 2/21/2020 6:07 PM, Otavio Salvador wrote:
> On Fri, Feb 21, 2020 at 11:06 AM Otavio Salvador
> <otavio@ossystems.com.br> wrote:
>> On Fri, Feb 21, 2020 at 3:52 AM Minas Harutyunyan
>> <Minas.Harutyunyan@synopsys.com> wrote:
>>> On 2/20/2020 5:16 PM, Otavio Salvador wrote:
>>>> Hello Minas,
>>>>
>>>> Thanks for all your help on this, ...
>>>>
>>>> On Thu, Feb 20, 2020 at 3:59 AM Minas Harutyunyan
>>>> <Minas.Harutyunyan@synopsys.com> wrote:
>>>>>
>>>>> On 2/19/2020 7:10 PM, Otavio Salvador wrote:
>>>> ...
>>>>>> What sequence do you want us to do?
>>>>>
>>> Please provide dwc2 debug log when stop working with g_serial exception
>>> dump inside.
>>> Also provide dwc2 log when it's work without issue.
>>
>> Attached.
> 
Reviewed all logs. Not found any dwc2 related issue. Not able to 
reproduce on my setup. My log on rmmod g_serial:

[68784.817773] g_serial gadget: reset config
[68784.817775] g_serial gadget: acm ttyGS0 deactivated
[68784.817779] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable(ep 000000005e9ae420)
[68784.817784] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable: DxEPCTL=0x08080200
[68784.817791] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable(ep 00000000e6730f2b)
[68784.817796] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable: DxEPCTL=0x08880200
[68784.817805] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable(ep 00000000cef05e9b)
[68784.817809] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable: DxEPCTL=0x084c000a
[68784.817820] g_serial gadget: acm ttyGS0 deactivated
[68784.817894] usb 5-4: USB disconnect, device number 6
[68784.817975] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable(ep 00000000e6730f2b)
[68784.817980] dwc2 dwc2.1.auto: dwc2_hsotg_ep_disable: DxEPCTL=0x088a0200

Pay attention g_serial twice performing ttySG0 deactivation.
In my setup second deactivation passed Ok, but in your case exception 
back trace print out with NULL pointer de-reference on spin_lock_irq. 
Could you please add debug print before spin_lock_irq() in function 
gs_close() in file u_serial.c to check tty, tty->driver_data. Are these 
vars NULL or no.
Just rmmod g_serial case fully enough.

Thanks,
Minas

> Forgot to attach the files.
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
