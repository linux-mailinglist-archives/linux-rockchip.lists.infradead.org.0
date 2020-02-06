Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B8B15425C
	for <lists+linux-rockchip@lfdr.de>; Thu,  6 Feb 2020 11:49:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScA78f1EfU80MB1bjLdCV7P561hj60iv/C8/e4FX0YQ=; b=WF9U3T5aKUQxO7
	qeC3xSM1q5drdxdL7r7aqvxwlIXCnmh7ipglGQRYKm9rWw4kXwIAdp+fMshDsptM1FBKJ7m3MH91u
	YiRIDC+Jkmk/bk+JZxL/FOP3MtibMKuAc9hgLoewaTp9OqdT6MnaT1QklVwJrETpST3qHq79MUy2I
	+014Anm1aIXlG4wyiKGdQtkBV1DPFhrPH5Eft4VLJ6l85ionYAIq3AgJ2bi9ZMUJBiRQdBPqdaa0b
	c4+i/BO7ZeOQJLdpN1lR1nGsJ1nNzgIw/6V+4pAWSZjP+DVr8gAEIrQtTzVmsaG4cUg7UeJxKy+5e
	ilziGivayOCHlzjSkvtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izejD-0002mR-O8; Thu, 06 Feb 2020 10:49:47 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izejA-0002ll-VF
 for linux-rockchip@lists.infradead.org; Thu, 06 Feb 2020 10:49:46 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7399B407FF;
 Thu,  6 Feb 2020 10:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580986182; bh=8ifnRY8i0ZxMIH20BZX9T9s0DF6iD5DNQcIeiWKBIkQ=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=b9Zq3TJkE93G3rbMKw288ha9CImGW69IGQPjjxH//VYQfsD/aGjpy3yaiMylvaiiS
 9eKmnJdMLc7u/uW9junZgeidrEyc/o/u7J8cLOgJGly0hQ1NBEJxMkQaUHlHmfvbjM
 CTExWkzoGfV2Sr1mKf+7mxbmIajpaNcZHR62zpctNLT5OCIG87p7Qhy2mforA6MWlK
 pzVbjvfSUMS3ZlAGtPZyTpsvZbI03V8iYbuIWqdMjhNNl3jEvogQzek9zMYzqdlArN
 GcdGrkJAsTXJxZa2oleVI/uTP4DLyHEEJ+PTNSnXop0BU1aRhjfuKwZJEUcTCWEEIo
 GAbl1SebAdX+A==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 26271A008A;
 Thu,  6 Feb 2020 10:49:33 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 6 Feb 2020 02:49:28 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 6 Feb 2020 02:49:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e9NWOEHJB5ZVdhepv1BNW6zYszHFwMxVGelTPS6R+WEdLWNBgF7ral29+UY/aZ58J8QL9kfLNQzNCyUe0kZBzPikeFFClKZKT991W0LOsPZnZYtr2xYW77xideDlaYcxF/2kJKrD3BrgpXBE0vOPDbIAWWSmgKIA8fpZYfCPciQ3y0Po6WBcXO6LZpOAqfOWrnQ1qLv1fuXAimN3X7SQxw9M7mfz9goAX9GfDBMhP8w/W5cIaZ8LlPKRbfw+kVfnWWKhx0sfZ8UUOeBNngOZHOLfY6ksRhlA3Lohq8el5JlQD+IrQX1eRrJmL18Uc+at7U8XSKKmV2yZ/1mB+dXtWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ifnRY8i0ZxMIH20BZX9T9s0DF6iD5DNQcIeiWKBIkQ=;
 b=Klmzhi8JEswNkxJj3CK7AHrYMfdkDT3jC4KfWjzCK3dCDZPMAjJAJxk6RDDlB9phNKeesdU9S2KMR/burUCF/ux5HnxBnXJC4JuHUJVxYZri77ZqQ4tqFjB3qxkcLkELinr7DFicD4O/cw4+YnlFvGyz0J+VeosCVqOqAiLO3xEbA+ujUlkgr6feAHjZco3dEDB+iicA4EBC2oamQJiXFsZ1WZyWmYQ4pN7f341HZqYt8UX08E48fhXuB8rhzDeMBwLlU4236w5Jq4M7mUiW6gmtpmiE0wlcbhAgY8qwMKpee/pKb3IwblNCHQhheITqyEwjcLZTYZmjyv00A5glGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ifnRY8i0ZxMIH20BZX9T9s0DF6iD5DNQcIeiWKBIkQ=;
 b=BePD5Wl6Ix3vxGj/3IU4CaDzaMFCxvuPwUaHEN78CjG4rwLEzxoIyWx80pbaxe8Pt1nBDF7kRKr2qcRjMcH12EY0a5yRjgPYg0fIZWSh5uFEsuLlFiKQ2F9TsnFbiL9M46NBU4R7tkpKEDPbQPKJDF4gjXbLSAIoSaCbhWyiQ1c=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3902.namprd12.prod.outlook.com (10.255.238.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Thu, 6 Feb 2020 10:49:26 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::35cf:644a:cfa6:72f8%7]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 10:49:26 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: dwc2: gadget mode and timeout with GRSTCTL_CSFTRST
Thread-Topic: dwc2: gadget mode and timeout with GRSTCTL_CSFTRST
Thread-Index: AQHV3DHmbyoEXObIA0+25jOL9DUOU6gN/c2A
Date: Thu, 6 Feb 2020 10:49:26 +0000
Message-ID: <aeb7c81c-7ddf-823d-8c8f-91abe281bae6@synopsys.com>
References: <3600884.FGW0xRIbGs@phil>
In-Reply-To: <3600884.FGW0xRIbGs@phil>
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
x-ms-office365-filtering-correlation-id: ccc570e0-5d7e-44b5-b22a-08d7aaf23c15
x-ms-traffictypediagnostic: MN2PR12MB3902:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB3902C1B961F2C8BD3854B89EA71D0@MN2PR12MB3902.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(346002)(366004)(396003)(136003)(376002)(199004)(189003)(186003)(31696002)(6486002)(4326008)(6512007)(66476007)(66556008)(64756008)(66446008)(478600001)(66946007)(76116006)(91956017)(71200400001)(5660300002)(36756003)(31686004)(81166006)(8936002)(2616005)(53546011)(2906002)(8676002)(86362001)(81156014)(6506007)(316002)(110136005)(26005)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3902;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GaSwaA8mw4Vod+shcglL8zpX3uF7F74TDufEOpBT4iHE7xsnru6ml1L+foafr02Idw0ohpqSGYek6YBvsEfCWiLPVz+MbCfH54v6P3C2fk1joAMVhoJrowE9R8alqYnhzGRZGpETJ0GecJidyFpfrXR+dgViP609pD/PRTJcek7q+mcC92YGPgHVDeUPpLNZ93WZ1Iutbi8GMxH06tkLQwsbgONBXh60q1K7wqcfSyMQNEPnTAsUrCjIIECsIzILpRSOfBg+IwBSJL0wtcG0Qvyc39fznvpZiSDnTVQnQWIvZu6EIQKLR0lk716lH5sdvW0Khmqamfy7+NWS/e8vGeF9WVosXONgwh6KneDRFxUiDRFmEb0U2gFG1Vf4jTFaGOa7ajkVB/pkHZHWMx9Urhlx8PwFLyGS/xCqA1RM16x2SKZuT1qvwDPWtTL3EtXo
x-ms-exchange-antispam-messagedata: QfHLubzT2+1Slqq7kl5ybOq4DAfjuT1KD1y0pJiMVSzoU+Jt0nGU8LdPwH5zXKJvs6j5JuNpXx9+CdHRNfZou7tppu8qmcST6AqsA8heo4NbmMrc6ZTs8zaNj5eFWxoTugn6JOFVS2aWAvIXVvdavw==
Content-ID: <ADDE3620032E424887235C9B434B22C7@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ccc570e0-5d7e-44b5-b22a-08d7aaf23c15
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 10:49:26.1434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /bUwmdvglVPTTltddfNebXiQvb9WksfoM2hq0SJiPRKcUdS1DAQpiLAXfWDpDFN/7olopSo6sDeWT11hqmXZmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3902
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_024945_070846_DAF4BF8C 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 John Keeping <john@metanate.com>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko,


On 2/5/2020 6:37 PM, Heiko Stuebner wrote:
> Hi,
> 
> right now we're experiencing strange behaviour with a dwc2 on Rockchip's
> PX30 soc.
> 
> With a cable connected to the port, the configfs-snippet below seems to
> work and at least creates a acm device on the host. Though I'm told that a
> 	 picocom -b 115200 /dev/ttyACM
> sometimes works ok but also sometimes returns -EBUSY or hangs.
> [But I guess that is a separate problem]
> 
> But if there is no cable connected when trying to do the configfs steps
> we end up with
> 	dwc2_core_reset: HANG! Soft Reset timeout GRSTCTL GRSTCTL_CSFTRST
> and no gadget gets configured.
> 
Which timeout value set to wait GRSTCTL cleared? Does this commit 
applied: 6689f0f4bb14e "usb: dwc2: use a longer core rest timeout in 
dwc2_core_reset()"?
If yes, can you send debug log for above case.

Thanks,
Minas

> 
> So I guess to get a feeling for the issue, is this something to be
> expected, or at least a known issue, with maybe a fix flying around
> somewhere?
> 
> Or is this working on other dwc2 platforms correctly and is caused
> by some other part talking to the dwc2 doing strange things?
> 
> 
> Thanks
> Heiko
> 
> -------- 8< ---- configfs snippet ------ >8 --------
> cd /configfs/usb_gadget
> mkdir g1
> cd g1
> echo "0x1d6d" > idVendor
> echo "0x0104" > idProduct
> mkdir strings/0x409
> echo "0123456789" > strings/0x409/serialnumber
> echo "Theobroma Systems" > strings/0x409/manufacturer
> echo "Cobra Debug Serial" > strings/0x409/product
> 
> # create config
> mkdir configs/c.1
> mkdir configs/c.1/strings/0x409
> echo "conf1" > configs/c.1/strings/0x409/configuration
> 
> # create function
> mkdir functions/acm.usb0
> ln -s functions/acm.usb0 configs/c.1
> 
> # activate new config
> echo "" > UDC
> echo "ff300000.usb" > UDC
> 
> 
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
