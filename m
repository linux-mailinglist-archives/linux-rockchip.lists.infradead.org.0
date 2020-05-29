Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AA11E8146
	for <lists+linux-rockchip@lfdr.de>; Fri, 29 May 2020 17:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zb7pYz95G7XBjvuIFJLnaAzw5MsallaHYs9xAATDylQ=; b=JnwHaMtOXsniU0KjvxaJN0tNc
	nb8QDPreqyXRrSJVq+7gDmMPUB1oqypxKSbiaXS/WDFlxzStHWmiRUasfrGPHhsVmoD7wp+BNxxND
	q2v1XDCEya/ohKrG+qyTq+bmpMpY0JSuzmz5CK9dml6j66c/k9rddl6EbAB6Ydz93toKnFdsmMov5
	JZY5R+IXNUMmJscS87MBdyV9EtOlwLz7t1gSR1jJqiPthhtWVUpqnicU9y4mEjGM2c/imrHdd5OAs
	JjV+SznOs8PYc1/G9QBect7KyE0bouciOHKWKmobYP/HhzfrVxd/YELoGLXVNewSRqNPn5M/FFxdV
	5BsKEWhaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegci-0007zI-9m; Fri, 29 May 2020 15:08:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegcT-0007p1-Pu; Fri, 29 May 2020 15:08:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id B4BEF2A46A5
Subject: Re: [PATCH v4 02/11] thermal: Store thermal mode in a dedicated enum
To: Guenter Roeck <linux@roeck-us.net>
References: <20200529150549.GA154196@roeck-us.net>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <b9aa246f-4534-db23-aea1-07aae2edbdd5@collabora.com>
Date: Fri, 29 May 2020 17:08:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529150549.GA154196@roeck-us.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_080825_968185_95571B9F 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Kalle Valo <kvalo@codeaurora.org>,
 linux-wireless@vger.kernel.org, Peter Kaestle <peter@piie.net>,
 platform-driver-x86@vger.kernel.org, Vishal Kulkarni <vishal@chelsio.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-rockchip@lists.infradead.org, Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-pm@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Intel Linux Wireless <linuxwifi@intel.com>, Ido Schimmel <idosch@mellanox.com>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 Jiri Pirko <jiri@mellanox.com>, Orson Zhai <orsonzhai@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Sebastian Reichel <sre@kernel.org>,
 linux-renesas-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Baolin Wang <baolin.wang7@gmail.com>, Len Brown <lenb@kernel.org>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VyBkbml1IDI5LjA1LjIwMjAgb8KgMTc6MDUsIEd1ZW50ZXIgUm9lY2sgcGlzemU6Cj4gT24gVGh1
LCBNYXkgMjgsIDIwMjAgYXQgMDk6MjA6NDJQTSArMDIwMCwgQW5kcnplaiBQaWV0cmFzaWV3aWN6
IHdyb3RlOgo+PiBQcmVwYXJlIGZvciBzdG9yaW5nIG1vZGUgaW4gc3RydWN0IHRoZXJtYWxfem9u
ZV9kZXZpY2UuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5k
cnplai5wQGNvbGxhYm9yYS5jb20+Cj4gCj4gV2hhdCBpcyB0aGUgYmFzZWxpbmUgZm9yIHRoaXMg
c2VyaWVzID8gSSBjYW4ndCBnZXQgdGhpcyBwYXRjaCB0byBhcHBseQo+IG9uIHRvcCBvZiBjdXJy
ZW50IG1haW5saW5lLCBub3Igb24gdjUuNiwgbm9yIG9uIHRvcCBvZiBsaW51eC1uZXh0Lgo+IAo+
IFRoYW5rcywKPiBHdWVudGVyCj4gCgpnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdGhlcm1hbC9saW51eC5naXQsIGJyYW5jaCAidGVzdGluZyIuCgpiYXNlLWNv
bW1pdDogMzUxZjQ5MTFhNDc3YWUwMTIzOWM0MmY3NzFmNjIxZDg1YjA2ZWExMAoKQW5kcnplagoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
