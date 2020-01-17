Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244AB140421
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 Jan 2020 07:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g25DTN1nuGQUEYpKnRQE77bE0MwAczjMOFijbvnReYc=; b=Nr1knyiVInKaMlXnIDZC6+zHl
	ZkR06RNP1/TzgtP8g9PPTPeiW3tbP7ZQuUe7rJKYa3n4EgugTRhidueEMc2xp87MXHxCa/BLFwXLe
	dhpB+K2miZrDAwbDgUgctWTfjaLnrbZXqLFye+zCSfkti9w569xMh85M9nne9ofLZG6cM8Hjhz57/
	ztR49a1HpY9nswlKuKOuZ3zaJwMMCqN5Hodlz2VDLehP9frC4LxqIW21ycXczUniJoSuTdRNOTK79
	Lb+B/EBVSOoolSWSit/GwOwUVTsWTFZRytvGF9cBTpAe95JRlCK5dYkO+MxcvIqHrRQIFJFy8Pltg
	O7ksykxTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isLP4-0003Vj-PA; Fri, 17 Jan 2020 06:46:46 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isLP0-0003V8-GU
 for linux-rockchip@lists.infradead.org; Fri, 17 Jan 2020 06:46:45 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id C55B9366;
 Fri, 17 Jan 2020 14:46:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.33.90] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P9176T140331082155776S1579243591578492_; 
 Fri, 17 Jan 2020 14:46:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <511b112828b79165bd6b66314616cd8e>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: marex@denx.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 6/8] watchdog: kconfig: Enable designware for rk3399
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
 <20200109085222.22670-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e6d877e3-232a-2e25-c16e-873fd69acec7@rock-chips.com>
Date: Fri, 17 Jan 2020 14:46:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200109085222.22670-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_224642_750864_27BCACD9 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS85IOS4i+WNiDQ6NTIsIEphZ2FuIFRla2kgd3JvdGU6Cj4gRW5hYmxlIGRlc2ln
bndhcmUgd2F0Y2hkb2cgZHJpdmVyIGZvciByazMzOTkgaWYgV0RUIGRlZmluZWQuCj4KPiBDYzog
TWFyZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+ClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZl
ci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gQ2hhbmdlcyBm
b3IgdjQ6Cj4gLSBUaGlzIGNoYW5nZSBvbiB0b3Agb2YgYmVsb3cgc2VyaWVzCj4gICAgaHR0cHM6
Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wcm9qZWN0L3Vib290L2xpc3QvP3Nlcmllcz0xNTE0MzEK
Pgo+ICAgZHJpdmVycy93YXRjaGRvZy9LY29uZmlnIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3dhdGNoZG9nL0tjb25maWcg
Yi9kcml2ZXJzL3dhdGNoZG9nL0tjb25maWcKPiBpbmRleCBiZjU2MTJhODExLi5jZWVmZWUzYTZi
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvd2F0Y2hkb2cvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMv
d2F0Y2hkb2cvS2NvbmZpZwo+IEBAIC00OCw2ICs0OCw3IEBAIGNvbmZpZyBVTFBfV0FUQ0hET0cK
PiAgIGNvbmZpZyBERVNJR05XQVJFX1dBVENIRE9HCj4gICAJYm9vbCAiRGVzaWdud2FyZSB3YXRj
aGRvZyB0aW1lciBzdXBwb3J0Igo+ICAgCXNlbGVjdCBIV19XQVRDSERPRyBpZiAhV0RUCj4gKwlk
ZWZhdWx0IHkgaWYgV0RUICYmIFJPQ0tDSElQX1JLMzM5OQo+ICAgCWhlbHAKPiAgIAkgICBFbmFi
bGUgdGhpcyB0byBzdXBwb3J0IERlc2lnbndhcmUgV2F0Y2hkb2cgVGltZXIgSVAsIHByZXNlbnQg
ZS5nLgo+ICAgCSAgIG9uIEFsdGVyYSBTb0NGUEdBIFNvQ3MuCgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
