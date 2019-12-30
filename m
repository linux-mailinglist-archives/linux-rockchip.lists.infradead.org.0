Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B844712CC09
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PF2ATjWFSws8pINkCy3QO/QkwYL/g9WFK6btCKwhHAA=; b=prhTWFzudxAnMQWCq/9l167cg
	ggyGoT2U9vfHuDhojEeJCq5SF/X+z5LkMDJ2HEa7aiTu+nGbrJdchjYyvFPeWFyWbEwEgvH+aCev0
	8H0lKCWLf3MnAySO5TYycJVTEqqhBQjVc0vDGoOcXWw0FNLZtSxY3V/tLHKQn5cqHFu2I0AX4oi+Z
	k9H5z45GMKh4VGjJ18Ik1uChde2PJGohECY5DbQwyWeX8WGLwHIqL5fgKUtMavbfvq2yf8ujdxdPs
	ltN3VtLQX71cTTwQ3RnVWqoQjF13JCwm1/aCmRa+n97/IxgQ9vFM/ECbkSUxjZ/ong8Df3qHAby6C
	SzBUW3a/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illNS-0000IA-Rv; Mon, 30 Dec 2019 03:05:54 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illNP-0000Hp-Po
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:05:53 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 382AC8CE;
 Mon, 30 Dec 2019 11:05:50 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31324T140475531753216S1577675149030596_; 
 Mon, 30 Dec 2019 11:05:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <347fccbba11d34bf4b87c48962b397ab>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 06/11] env: kconfig: Restrict rockchip env for MMC
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <d38ac96c-d4de-8acd-9070-a0847c721bd4@rock-chips.com>
Date: Mon, 30 Dec 2019 11:05:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190552_013710_CD130D9D 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBSb2NrY2hpcCBk
byBzdXBwb3J0IFNQSSBmbGFzaCBhcyB3ZWxsLCBzbyB0aGVyZSBpcwo+IGEgcG9zc2liaWxpdHkg
b2YgdXNpbmcgZmxhc2ggZW52aXJvbm1lbnQgZm9yIHRob3NlCj4gdXNlIGNhc2VzLgo+Cj4gU28s
IHJlc3RyaWN0IHRoZSBjdXJyZW50IGVudiBvZmZzZXQsIHNpemUgZm9yIE1NQy4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgpSZXZpZXdl
ZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBL
ZXZlcgo+IC0tLQo+ICAgZW52L0tjb25maWcgfCA1ICsrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Vudi9LY29u
ZmlnIGIvZW52L0tjb25maWcKPiBpbmRleCBlZDEyNjA5ZjZhLi45NDE2YTcwMDIyIDEwMDY0NAo+
IC0tLSBhL2Vudi9LY29uZmlnCj4gKysrIGIvZW52L0tjb25maWcKPiBAQCAtNDg4LDcgKzQ4OCw3
IEBAIGNvbmZpZyBFTlZfT0ZGU0VUCj4gICAJaGV4ICJFbnZpcm9ubWVudCBvZmZzZXQiCj4gICAJ
ZGVwZW5kcyBvbiBFTlZfSVNfSU5fRUVQUk9NIHx8IEVOVl9JU19JTl9NTUMgfHwgRU5WX0lTX0lO
X05BTkQgfHwgXAo+ICAgCQkgICAgRU5WX0lTX0lOX1NQSV9GTEFTSAo+IC0JZGVmYXVsdCAweDNm
ODAwMCBpZiBBUkNIX1JPQ0tDSElQCj4gKwlkZWZhdWx0IDB4M2Y4MDAwIGlmIEFSQ0hfUk9DS0NI
SVAgJiYgRU5WX0lTX0lOX01NQwo+ICAgCWRlZmF1bHQgMHg4ODAwMCBpZiBBUkNIX1NVTlhJCj4g
ICAJZGVmYXVsdCAweEUwMDAwIGlmIEFSQ0hfWllOUQo+ICAgCWRlZmF1bHQgMHgxRTAwMDAwIGlm
IEFSQ0hfWllOUU1QCj4gQEAgLTUxMSw3ICs1MTEsOCBAQCBjb25maWcgRU5WX1NJWkUKPiAgIAlo
ZXggIkVudmlyb25tZW50IFNpemUiCj4gICAJZGVmYXVsdCAweDQwMDAwIGlmIEVOVl9JU19JTl9T
UElfRkxBU0ggJiYgQVJDSF9aWU5RTVAKPiAgIAlkZWZhdWx0IDB4MjAwMDAgaWYgQVJDSF9TVU5Y
SSB8fCBBUkNIX1pZTlEgfHwgQVJDSF9PTUFQMlBMVVMgfHwgQVJDSF9BVDkxCj4gLQlkZWZhdWx0
IDB4ODAwMCBpZiBBUkNIX1JPQ0tDSElQIHx8IEFSQ0hfWllOUU1QIHx8IEFSQ0hfVkVSU0FMCj4g
KwlkZWZhdWx0IDB4ODAwMCBpZiBBUkNIX1JPQ0tDSElQICYmIEVOVl9JU19JTl9NTUMKPiArCWRl
ZmF1bHQgMHg4MDAwIGlmIEFSQ0hfWllOUU1QIHx8IEFSQ0hfVkVSU0FMCj4gICAJZGVmYXVsdCAw
eDQwMDAgaWYgQVJDCj4gICAJZGVmYXVsdCAweDFmMDAwCj4gICAJaGVscAoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
