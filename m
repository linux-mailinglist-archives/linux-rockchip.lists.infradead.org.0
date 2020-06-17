Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FC51FCD0F
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 14:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oDgRle+HyZ7bEdwDfsFnN+vHWq5bwsMFKlZ4UyQxGr8=; b=Ubl/jGkEaGzS4m9su/2yXLDbw
	7iqi4GVEVyV/1zWsezzubTKikx6MnvHbSnvdIuebr7Ll9MmnpSpcJvrSOy+gotoIo0pEryqEiEGGs
	ZxdAaWhm1eBQKxne2ctgI/A5YYRGmmwr1OjjJGoR0XfHeaN15VTfJeA45VYmiuGfuP7GoupZbSAoj
	KmaIss3dAj/127sThG3POqxlXwj68rA8Eh+w++iVYNN55qzsiYrs9BZP0RHJfBPk9VxwdbxfmLqP0
	xLgynl8/kV6ytSl8+ROqsUPQyzIOFKkWj4MVxPiD+8AVYjAo0L4KZJbT+2zOl07+a7YwQJZqkBgbb
	b5I9ieEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWrD-0005cR-RD; Wed, 17 Jun 2020 12:07:55 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWrA-0005bZ-2I
 for linux-rockchip@lists.infradead.org; Wed, 17 Jun 2020 12:07:54 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 727BF684;
 Wed, 17 Jun 2020 20:07:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25389T140143172253440S1592395661407272_; 
 Wed, 17 Jun 2020 20:07:42 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <2f2aa222071add7fb750d61c24ed6731>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_1/2=5d_drm=3a_drm=5ffourcc=3a_add_NV20_YUV?=
 =?UTF-8?B?IGZvcm1hdOOAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJvY2tjaGlwLWJv?=
 =?UTF-8?Q?unces+sandy=2ehuang=3drock-chips=2ecom=40lists=2einfradead=2eorg?=
 =?UTF-8?B?5Luj5Y+R44CR?=
To: Jonas Karlman <jonas@kwiboo.se>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <20200607202521.18438-1-jonas@kwiboo.se>
 <20200607202521.18438-2-jonas@kwiboo.se>
From: Huang Jiachai <hjc@rock-chips.com>
Message-ID: <d503eed1-571f-3e37-858b-b5de04cb79f7@rock-chips.com>
Date: Wed, 17 Jun 2020 20:07:40 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200607202521.18438-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_050752_452417_6A761212 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [211.150.70.205 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 Brian Starkey <brian.starkey@arm.com>, Ben Davis <ben.davis@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSm9uYXMgS2FybG1hbiwKCiDCoMKgwqAgSXMgdGhlcmUgYW4gYW5vdGhlciB5dXYgMTBiaXQg
Zm9ybWF0IHdpdGggNDo0OjQgc3ViLXNpbXBsaW5nIGJ1dCAKaGFzIG5vIHBhZGRpbmc/CgogwqBN
YXliZSB3ZSBjYW4gY2FsbCBpdCBEUk1fRk9STUFUX05WMzA6Cgp7IC5mb3JtYXQgPSBEUk1fRk9S
TUFUX05WMzAsCQkuZGVwdGggPSAwLAogICAubnVtX3BsYW5lcyA9IDIsIC5jaGFyX3Blcl9ibG9j
ayA9IHsgNSwgNSwgMCB9LAogICAuYmxvY2tfdyA9IHsgNCwgMiwgMCB9LCAuYmxvY2tfaCA9IHsg
MSwgMSwgMCB9LCAuaHN1YiA9IDEsCiAgIC52c3ViID0gMSwgLmlzX3l1diA9IHRydWUgfSwKCnRo
aXMgZm9ybWF0IGNhbiBzdXBwb3J0ZWQgYnkgcm9ja2NoaXAgcmszMjg4L3JrMzM5OS4uLiBwbGF0
Zm9ybSwgY2FuIHlvdSAKYWRkIHRoaXMgZm9ybWF0IGF0IHRoaXMgc2VyaWVzIHBhdGNoZXM/Cgrl
nKggMjAyMC82LzggNDoyNSwgSm9uYXMgS2FybG1hbiDlhpnpgZM6Cj4gRFJNX0ZPUk1BVF9OVjIw
IGlzIGEgMiBwbGFuZSBmb3JtYXQgc3VpdGFibGUgZm9yIGxpbmVhciBtZW1vcnkgbGF5b3V0Lgo+
IFRoZSBmb3JtYXQgaXMgc2ltaWxhciB0byBQMjEwIHdpdGggNDoyOjIgc3ViLXNhbXBsaW5nIGJ1
dCBoYXMgbm8gcGFkZGluZwo+IGJldHdlZW4gY29tcG9uZW50cy4gSW5zdGVhZCwgbHVtaW5hbmNl
IGFuZCBjaHJvbWluYW5jZSBzYW1wbGVzIGFyZSBncm91cGVkCj4gaW50byA0cyBzbyB0aGF0IGVh
Y2ggZ3JvdXAgaXMgcGFja2VkIGludG8gYW4gaW50ZWdlciBudW1iZXIgb2YgYnl0ZXM6Cj4KPiBZ
WVlZID0gVVZVViA9IDQgKiAxMCBiaXRzID0gNDAgYml0cyA9IDUgYnl0ZXMKPgo+IFRoZSAnMjAn
IHN1ZmZpeCByZWZlcnMgdG8gdGhlIG9wdGltdW0gZWZmZWN0aXZlIGJpdHMgcGVyIHBpeGVsIHdo
aWNoIGlzCj4gYWNoaWV2ZWQgd2hlbiB0aGUgdG90YWwgbnVtYmVyIG9mIGx1bWluYW5jZSBzYW1w
bGVzIGlzIGEgbXVsdGlwbGUgb2YgNC4KPgo+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4g
PGpvbmFzQGt3aWJvby5zZT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fZm91cmNjLmMg
IHwgNCArKysrCj4gICBpbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaCB8IDEgKwo+ICAgMiBm
aWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX2ZvdXJjYy5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9mb3VyY2MuYwo+IGluZGV4
IDcyMmM3ZWJlNGU4OC4uMmE5YzhhZTcxOWVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZm91cmNjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2ZvdXJjYy5jCj4gQEAg
LTI3OCw2ICsyNzgsMTAgQEAgY29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqX19kcm1fZm9y
bWF0X2luZm8odTMyIGZvcm1hdCkKPiAgIAkJICAubnVtX3BsYW5lcyA9IDIsIC5jaGFyX3Blcl9i
bG9jayA9IHsgNSwgNSwgMCB9LAo+ICAgCQkgIC5ibG9ja193ID0geyA0LCAyLCAwIH0sIC5ibG9j
a19oID0geyAxLCAxLCAwIH0sIC5oc3ViID0gMiwKPiAgIAkJICAudnN1YiA9IDIsIC5pc195dXYg
PSB0cnVlIH0sCj4gKwkJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9OVjIwLAkJLmRlcHRoID0gMCwK
PiArCQkgIC5udW1fcGxhbmVzID0gMiwgLmNoYXJfcGVyX2Jsb2NrID0geyA1LCA1LCAwIH0sCj4g
KwkJICAuYmxvY2tfdyA9IHsgNCwgMiwgMCB9LCAuYmxvY2tfaCA9IHsgMSwgMSwgMCB9LCAuaHN1
YiA9IDIsCj4gKwkJICAudnN1YiA9IDEsIC5pc195dXYgPSB0cnVlIH0sCj4gICAJCXsgLmZvcm1h
dCA9IERSTV9GT1JNQVRfUTQxMCwJCS5kZXB0aCA9IDAsCj4gICAJCSAgLm51bV9wbGFuZXMgPSAz
LCAuY2hhcl9wZXJfYmxvY2sgPSB7IDIsIDIsIDIgfSwKPiAgIAkJICAuYmxvY2tfdyA9IHsgMSwg
MSwgMSB9LCAuYmxvY2tfaCA9IHsgMSwgMSwgMSB9LCAuaHN1YiA9IDAsCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91
cmNjLmgKPiBpbmRleCBiNWJmMWMwZTYzMGUuLjI0NGQzMjQzM2E2NyAxMDA2NDQKPiAtLS0gYS9p
bmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJt
X2ZvdXJjYy5oCj4gQEAgLTI0Miw2ICsyNDIsNyBAQCBleHRlcm4gIkMiIHsKPiAgICAqIGluZGV4
IDEgPSBDcjpDYiBwbGFuZSwgWzM5OjBdIENyMTpDYjE6Q3IwOkNiMCBsaXR0bGUgZW5kaWFuCj4g
ICAgKi8KPiAgICNkZWZpbmUgRFJNX0ZPUk1BVF9OVjE1CQlmb3VyY2NfY29kZSgnTicsICdWJywg
JzEnLCAnNScpIC8qIDJ4MiBzdWJzYW1wbGVkIENyOkNiIHBsYW5lICovCj4gKyNkZWZpbmUgRFJN
X0ZPUk1BVF9OVjIwCQlmb3VyY2NfY29kZSgnTicsICdWJywgJzInLCAnMCcpIC8qIDJ4MSBzdWJz
YW1wbGVkIENyOkNiIHBsYW5lICovCj4gICAKPiAgIC8qCj4gICAgKiAyIHBsYW5lIFlDYkNyIE1T
QiBhbGlnbmVkCgotLSAKQmVzdCBSZWdhcmQKCum7hOWutumSlwpTYW5keSBIdWFuZwpBZGRyOiDn
po/lt57luILpvJPmpbzljLrpk5znm5jot6/ova/ku7blpKfpgZM4OeWPt+emj+W3nui9r+S7tuWb
rUHljLoyMeWPt+alvCgzNTAwMDMpCiAgICAgICBOby4gMjEgQnVpbGRpbmcsIEEgRGlzdHJpY3Qs
IE5vLjg5LHNvZnR3YXJlIEJvdWxldmFyZCBGdXpob3UsRnVqaWFuLFBSQwpUZWzvvJorODYgMDU5
MS04Nzg4NDkxOSAgODY5MApFLW1haWzvvJpoamNAcm9jay1jaGlwcy5jb20KCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
