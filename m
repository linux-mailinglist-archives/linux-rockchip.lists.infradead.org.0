Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7782223C9
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 May 2019 17:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKRLjFQQul31wuWFGu14Tncyfoxt0OodpjTfJtj/auQ=; b=m1u/NZsCry7tMI
	1NnlV9yf4WX8XYogt4l6guwjgoHqOOqJchZDJqJFYr7LQej2QsKf2wolj50UNm4xohLOzqAAtQu8I
	ZPSypch4LHe6dHWgXGMXND5nNOv0qF0e339r/0ya3OMoeL62Rk8pYJrFDCDjLfxkZIZexfNRqZxGj
	x5jcfYZrh1l3UVn+maJ9sjD/WFSsVysrcdDqSmNUbXyPxtHKzIWLKNA/GJD/c1kDzOEc7lRfSVQY4
	xCb2V/7e6Q0pQ2OKI3f493N+U683fZwrAZLBrbaKo/VvBbuomGJvvgg/+3hJG8wanTTeaD78jOtc2
	jiRAcbJeq8JfpsFMjKAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hS0yF-0006ue-To; Sat, 18 May 2019 15:09:59 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hS0yC-0006tg-H9
 for linux-rockchip@lists.infradead.org; Sat, 18 May 2019 15:09:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1558192197; x=1589728197;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RiV7OEoZWJ9YImSHPzGObfADBhzYvQh6R89rP4cvDws=;
 b=j6K7LMnb2hZI+wJ9c/Y/2f3DP1eZHQSd45jE5vXQv+GG8LxhvdnzU/1m
 hlq+CygZCSCLh5tUTMLKS67wq27HCwiFRspQ4o0jqrQPUrJa4NPB9nbfo
 NtpcWnJXUxNyQi1UMcw+Gcw5FiOcpxwNnW5AJKBQ4pg6cXGs6pEOs9AQW
 wZDZ2Mej4vTsF3S2fJwmBsDTrILhOhYpzxOXBrQLlWwdWiI1+v85XSBV4
 QoLS/IrqSFrAGv2yH9MNkdqejcdQkC4bAVrt7Ypemcv3J3e/EwtBX7BNL
 fOzbntELqKcFAW/Qynnhbs+8Zwqable+/g+MsCquLzAIelTLFdcEqI8ii w==;
X-IronPort-AV: E=Sophos;i="5.60,483,1549900800"; d="scan'208";a="113518271"
Received: from mail-co1nam03lp2059.outbound.protection.outlook.com (HELO
 NAM03-CO1-obe.outbound.protection.outlook.com) ([104.47.40.59])
 by ob1.hgst.iphmx.com with ESMTP; 18 May 2019 23:09:49 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RiV7OEoZWJ9YImSHPzGObfADBhzYvQh6R89rP4cvDws=;
 b=QcDup351RCI/Aa+TJR8shcWepRxeiN7qF6GkoROrXYy1iLMp/NxUOtoZ/ewjle+X7rQ6CYUUYCFWErzzRjsNPl3RwkhFFZDpTik7QOAhDobcLRW7/sBDIaeNP2UmXRVgCv/31HIWx5Tls0GMp9zyXqw6rHiyszcnR9WPiZsBqOU=
Received: from SN6PR04MB4925.namprd04.prod.outlook.com (52.135.114.82) by
 SN6PR04MB4671.namprd04.prod.outlook.com (52.135.122.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Sat, 18 May 2019 15:09:44 +0000
Received: from SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530]) by SN6PR04MB4925.namprd04.prod.outlook.com
 ([fe80::6d99:14d9:3fa:f530%6]) with mapi id 15.20.1900.010; Sat, 18 May 2019
 15:09:44 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Douglas Anderson <dianders@chromium.org>, Ulf Hansson
 <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>, Adrian Hunter
 <adrian.hunter@intel.com>, Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: RE: [PATCH 0/3] brcmfmac: sdio: Deal better w/ transmission errors
 waking from sleep
Thread-Topic: [PATCH 0/3] brcmfmac: sdio: Deal better w/ transmission errors
 waking from sleep
Thread-Index: AQHVDQOIWiJuHBTvfUy+CZIIvlgrX6Zw/GuA
Date: Sat, 18 May 2019 15:09:44 +0000
Message-ID: <SN6PR04MB49258D4FBE0B4D739E8BAF7EFC040@SN6PR04MB4925.namprd04.prod.outlook.com>
References: <20190517225420.176893-1-dianders@chromium.org>
In-Reply-To: <20190517225420.176893-1-dianders@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [129.253.244.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61d66f27-cfb8-48e7-ddb0-08d6dba2dc50
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:SN6PR04MB4671; 
x-ms-traffictypediagnostic: SN6PR04MB4671:
x-ms-exchange-purlcount: 1
wdcipoutbound: EOP-TRUE
x-microsoft-antispam-prvs: <SN6PR04MB4671AE9037E102DA115DBA04FC040@SN6PR04MB4671.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0041D46242
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(366004)(136003)(376002)(39860400002)(199004)(189003)(81156014)(81166006)(25786009)(4326008)(8676002)(8936002)(316002)(7696005)(76176011)(99286004)(102836004)(68736007)(66946007)(64756008)(6506007)(66556008)(256004)(6246003)(76116006)(66446008)(53936002)(74316002)(33656002)(110136005)(9686003)(55016002)(73956011)(54906003)(66476007)(66066001)(6306002)(4744005)(2906002)(6436002)(86362001)(476003)(72206003)(446003)(7416002)(478600001)(486006)(3846002)(71200400001)(26005)(305945005)(5660300002)(7736002)(52536014)(71190400001)(6116002)(11346002)(229853002)(14454004)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4671;
 H:SN6PR04MB4925.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N9O2ae9+jU9rs2sDfOqn7v12wZG/c0afdLcUr2gn3ifl1HGEuOIRmNmuLKqKrWZW+ksTDZBfL8mgUiUcgIdPZN91PnA5XPsp6KuNZo+aZYUbVCfghSB5J+kpDyCeULdeP+3aMkAef9AeI9v9IksOdinVsuEcKOeOkGx3NALAbRRWZfctp5yawVwv8KFbWOYI/0bfyC5VgkpEWdefMIwya7MPvcFQpF8iKwnNhpYb+u1CRqUetZkb/2o4z9mE2Sh2E8cuR6etc/azGF2myiCfEjcdsYl8jmE2LyL7lnVPDa2IoXzCyPh2chtZmUebMoDKGlyIAhcQh/AT9S07BKGrFZyJLjCXj3me4O5g1l73jT9/SUehRft80O+eNJij7oouZObWg2k7Tw2qhCob1q1XwEJDcD8CTEDYjQ04dvPsRTQ=
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61d66f27-cfb8-48e7-ddb0-08d6dba2dc50
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2019 15:09:44.4257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4671
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_080956_683682_C98F379B 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "brcm80211-dev-list@cypress.com" <brcm80211-dev-list@cypress.com>,
 Ritesh Harjani <riteshh@codeaurora.org>,
 "briannorris@chromium.org" <briannorris@chromium.org>,
 YueHaibing <yuehaibing@huawei.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "mka@chromium.org" <mka@chromium.org>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Madhan Mohan R <MadhanMohan.R@cypress.com>, Martin Hicks <mort@bork.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Double Lo <double.lo@cypress.com>, Wright Feng <wright.feng@cypress.com>,
 Jiong Wu <lohengrin1024@gmail.com>, Naveen Gupta <naveen.gupta@cypress.com>,
 Franky Lin <franky.lin@broadcom.com>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

> 
> This series attempts to deal better with the expected transmission
> errors that we get when waking up the SDIO-based WiFi on
> rk3288-veyron-minnie, rk3288-veyron-speedy, and rk3288-veyron-mickey.
> 
> Some details about those errors can be found in
> <https://crbug.com/960222>, but to summarize it here: if we try to
> send the wakeup command to the WiFi card at the same time it has
> decided to wake up itself then it will behave badly on the SDIO bus.
> This can cause timeouts or CRC errors.
Wake-up itself: as part of a WoWlan, or d0i3?
Looks like this calls for a wifi driver fix, and not WA in the mmc driver.

Thanks,
Avri

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
