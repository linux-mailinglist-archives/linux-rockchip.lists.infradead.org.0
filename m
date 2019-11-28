Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B755B10C7E6
	for <lists+linux-rockchip@lfdr.de>; Thu, 28 Nov 2019 12:29:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxcJ40Z556Xnkh99fwEMhRo1qUZLPVBD7hlDmEjYn/Q=; b=mg+5aKv0rqh5wV
	XUnql/jAwEOZKw3bO9f7EbXXcZwO/Jol+UqZoVSfKTgHNGVH7BMxVngHnEc9ZCsVlMb+T2Dvv+te0
	mwdr5TSW87E4wYLn+mXvmsJjmw677uvAtvbNMqfWJgSuLWnnNMgS0GnCwXwRkUgrRWd3tpdQlI+Yb
	61cbu4b2bAhswGQSlYCutTkzsNSzCuY+nbgSmlx8sgzFS7xyIcm4lRJFGYjOu668XLzV7Dq9Gy6ZJ
	J+sT+0tolCDzXbqWjxb8FpNFnMCW4VAFv5vbCGR/uToyrbwOGCkyIXU9l5UF23X5TDy57BhtwxHbh
	vwVYntWHwMsCPs9VJM0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaHz0-00082E-Kz; Thu, 28 Nov 2019 11:29:14 +0000
Received: from sv2-smtprelay2.synopsys.com ([149.117.73.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaHyx-00081i-GW
 for linux-rockchip@lists.infradead.org; Thu, 28 Nov 2019 11:29:12 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 7930942662;
 Thu, 28 Nov 2019 11:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1574940546; bh=ZvQS7kxa2X2J7pQqPIGR8D9Bjudyky8lWGZD0jZzJi0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=Jg/UAEyfvxVozXeGq3ozRlls4xdqksFmb6jhCMM8BcHPbYNnf+pNW9LyUyIebm4Vm
 QQ6IqDclMvzwjlJnduqFzTQ2QLfUCJ6Vd4UWx+sRQgGQ4qZmEG+0T8oI4TAGrF9b3g
 F9ZP2OtyWnV14u8OxJBrjHhKR7hb9ID+C0ggTWxlMHasCuGIb1TjZgfm/M+CZgcnuY
 FFtM4HVw+IBWTXoVgj40725jL7BwBhYHio90t6kWC1L63gOzWIrAjPFONXswCxTTIB
 fNurm8tpqTRzrOEb5mo7VsfATDegdCn1wsT9Rbd0wmpl/nyW9Hbh3ElsHdEuw5aSgn
 b23BFqyxXjfNQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id ACF85A0083;
 Thu, 28 Nov 2019 11:29:05 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.13.188.44) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 28 Nov 2019 03:29:05 -0800
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.13.188.44) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Thu, 28 Nov 2019 03:29:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TTn+nP0sUTMTxUoQgIxABZluAUPrL1JGrm2KJThF+RyvRcwN3DO6sV2I3yL4n5KSQxG/U35XVrCoey5TNDlaj5mlx6Mep2BfiC5i4jXBK5NWLptFKwu1oKYaEyqLPLKLD1PPAGbQ71EAxnTVnIjr0NIi0RjuDW68ds7R8TZyIFeaZtwKqkNr1LfVtA88hiPTK9b9ZsOJBoLK9q1QCVEJesfrd0cTsNBQa1nYcC41TNQWiq5JvVv/xsIlO0Z++SVEh6YcMOGvBa0GS6O98aeQ9+7w9mFKY6YqDfBg0B3viMEIzHKDcVTJnthODWxB2X5PiQ1AZh0jy+92a0PVhLx9ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZvQS7kxa2X2J7pQqPIGR8D9Bjudyky8lWGZD0jZzJi0=;
 b=WLrssrX3By4zDS4dXnOoXUdHb+1Iucb+24VQ5XacMHkJmshRiQFQnlFxo5jf+vRvEdIFTfDJJrV2Y5X+bpOAyGwVGN54DaGgMMzkRLjbledBFAOenL38MCW+ZGHMHvGojTKvLRXGR3v2puALQSYmpD7FczKeqtmFXzDM6nsuELpuhxHLlvtLtLS4AjTDh+mE4EwjZF0Np01BUN90gkEw3sxKgf/TVDuR3kfcuOlnLnaoCsG3GDceUW9RvsOGT7boZJAtNeQlCLOe8SbPQXDTA0BMsCzym/U44Phm4nT8Tf0V39JgeRT0J1pnnxHCQTKo6WXym9ApxSlJXJ83XtxjAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZvQS7kxa2X2J7pQqPIGR8D9Bjudyky8lWGZD0jZzJi0=;
 b=h6HP4kn0AHsBuouyDKfbv4UfaQMCEgxbT/+XnQmditLcfFUL4z63PuNBP4B0BqwEKATKFo+b25y26NH+aQtdcy/7jiNt9stJFqnW5APdhokYU2AUMmVvkK+wdAhm9x9opoXClYp6LkkUzbKT85l86JZl8wuOkU9WjV9dSU4nK+A=
Received: from MN2PR12MB4093.namprd12.prod.outlook.com (52.135.51.203) by
 MN2PR12MB3952.namprd12.prod.outlook.com (10.255.236.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.20; Thu, 28 Nov 2019 11:29:03 +0000
Received: from MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb]) by MN2PR12MB4093.namprd12.prod.outlook.com
 ([fe80::d0e:7272:4a88:ffeb%5]) with mapi id 15.20.2474.023; Thu, 28 Nov 2019
 11:29:03 +0000
From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
To: Jack Mitchell <ml@embed.me.uk>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>
Subject: Re: RK3288 dwc2 USB OTG + macOS
Thread-Topic: RK3288 dwc2 USB OTG + macOS
Thread-Index: AQHVWQgnMkJE65IZHEGxyc1XtnBgSqcTjyUAgI183AA=
Date: Thu, 28 Nov 2019 11:29:03 +0000
Message-ID: <3e45e70d-1e59-373d-76b7-b6a8a6320514@synopsys.com>
References: <e6321abc-1d3a-cfa1-638a-6051719462ad@embed.me.uk>
 <bcda1da2-fcdf-2c5b-d07b-5cf397571eb7@embed.me.uk>
In-Reply-To: <bcda1da2-fcdf-2c5b-d07b-5cf397571eb7@embed.me.uk>
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
x-ms-office365-filtering-correlation-id: 98228742-007a-44e8-811c-08d773f62c0b
x-ms-traffictypediagnostic: MN2PR12MB3952:
x-microsoft-antispam-prvs: <MN2PR12MB3952B7637D8E4425D480647DA7470@MN2PR12MB3952.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0235CBE7D0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39860400002)(136003)(366004)(376002)(396003)(199004)(189003)(86362001)(31696002)(3846002)(6116002)(31686004)(65806001)(66066001)(316002)(99286004)(64756008)(58126008)(65956001)(110136005)(54906003)(66446008)(5660300002)(66556008)(66476007)(2501003)(66946007)(76116006)(91956017)(36756003)(8936002)(81166006)(186003)(81156014)(2616005)(8676002)(478600001)(305945005)(76176011)(25786009)(11346002)(26005)(7736002)(102836004)(446003)(14454004)(6436002)(256004)(6512007)(4326008)(6246003)(71190400001)(71200400001)(53546011)(6506007)(6486002)(5024004)(229853002)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR12MB3952;
 H:MN2PR12MB4093.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TJMF25eHkuAgttxvcsN9efQlpnDmd31NOmvopBk26U9vOqcTfJPH8SqKLcYJDRc9edH4X74PwtTbeGC+EnFYz/2ZdzUjfq20PMHWpX6BGLcK2Mqt283PBrH0wV+jg7vjemgTN7CJf915HvMURwQI/57QjBAsucxlpGWxCTPmZ6Ka68ibdPmL8pExyGwKZhBKa4s0oTKkPPFQemOIuCaIki2CcwV5U4yS8tYYw0Uz65gWtfjLngXFdyCOejnN5hcjj76b+BBjey/iExM+qSWhioq46Om76eR2Iq+FnwMAtLFhr+HaiWG5xnE0kxEFeOsBtJ/oEBnPOYM3RBDa3TKj3pnTtH7UYYhZjAnwSmcesZUbLCfCAOsmFLo0T5P79z2CkUAieALT/tpu3eVUFy0dLeBSeGpIYykNpFRmKD2c0MSfyryDdvCPvd2ozmPBNbFS
x-ms-exchange-transport-forked: True
Content-ID: <543CABF7B3F5E440B7E39679B2829325@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 98228742-007a-44e8-811c-08d773f62c0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Nov 2019 11:29:03.2980 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OOvVNiZHEbz69TcDq35EBxXuOWATdWBMTNZYG8QNKBiLpOUFz9exg7CD7B+9JL8a3JCRqkSCAxiRPUh4i7k3Wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3952
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_032911_556798_93732815 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Phillip Karls <prkarls@gmail.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jack,


On 8/30/2019 2:49 PM, Jack Mitchell wrote:
> On 22/08/2019 17:06, Jack Mitchell wrote:
>> I'm having issues on a Firefly rk3288 board when trying to use USB
>> gadget ethernet on macOS. The dr_mode is set to "otg" and it works fine
>> with my Linux desktop.
>>
>> If I set the dr_mode to "peripheral" macOS will work, but still takes
>> around 10 seconds to enumerate the device which makes me think it's only
>> just working. However, I need the port to be in "otg" mode as it will
>> switch between peripheral/host use cases.
>>
>> I've attached a log from the dwc2 driver from mainline Linux 5.2 when
>> being plugged into the macOS device for 30 seconds, then removed. The
>> mac in this case is a 2013 macbook pro. Any pointers in the right
>> direction would be greatly appreciated.
>>
>> Regards,
>> Jack.
>>
Sorry, for late response.

Could you please apply recently submitted patch "[PATCH] usb: dwc2: Fix 
SET/CLEAR_FEATURE and GET_STATUS flows" and test again.

> 
> I've been poking about with this some more and I've managed to bisect
> the issue down to the following commit
> 
> 729cac693eecfebdb9e152eaddddd358ae2decb7 usb: dwc2: Change ISOC DDMA flow
> 
> If I build before this commit everything works fine with a g_ether
> gadget device on mac. Unfortunately it's a rather large change which I
> can't just revert in master as it's got multiple dependant commits
> later. So, any advice on what could be causing this or how to help debug
> it would be much appreciated, as at the moment I've just forward ported
> the working 4.16 version of the driver over the 5.3-rc6 broken driver
> which isn't very sustainable in the long run.

I don't think that issue root cause coming from mentioned by you above 
patch. Based on log you provided, SET_FEATURE control transfer not 
completed by gadget - ZLP on status stage not sent to host.

> 
> Regards,
> Jack.
> 
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
