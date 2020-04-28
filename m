Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7FA1BC0DB
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 16:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lKWho66dCaqr9KI5M1iNUG0SscA9kmGhgsHZk1m5opQ=; b=kMKXRjueOm0WRo0c2B0iY5+td
	N+qykB9RHlZskDwHOBO2eso5u+GoXX6lHmEyM/X7lblYrT6UXQA6hypK5+CnI8j8HqbqzA7PdGf9K
	gCihsVekbE4HahmfpbECe4NIgJXPOXS2qWRsQxeWXkKIxFpaYNHOsqulw7pGl1sRjpc4BBfxPEo9p
	X+DnFxSY8ji4nLAUBXvmExaq8EwXc8Tk4Z3lsOCHqduNOdzWzf8w8TM4Mh3yi1GylP83KaplWjtXC
	UCXH2AUk11uAu3NGEFI4QFOnb93HyxPopoW9Ahg24c0BSGua3ms+uJfnSvHISmA9zqJdcLEmzVYap
	o3wz6tpbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQyv-0006QS-Hj; Tue, 28 Apr 2020 14:13:05 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQyM-0005ue-Ix
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 14:12:32 +0000
Received: from localhost (unknown [192.168.167.225])
 by regular1.263xmail.com (Postfix) with ESMTP id 78DCF406;
 Tue, 28 Apr 2020 22:12:22 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.110] (unknown [112.49.233.123])
 by smtp.263.net (postfix) whith ESMTP id
 P25174T139628896048896S1588083140505719_; 
 Tue, 28 Apr 2020 22:12:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b9ef0258acb5d9e95729d436117a298f>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.123
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2_1/6=5d_arm64=3a_dts=3a_rk3399-puma=3a_M?=
 =?UTF-8?B?b3ZlIHUtYm9vdCBwcm9wZXJ0aWVzIGludG8gLXUtYm9vdC5kdHNp44CQ6K+35rOo?=
 =?UTF-8?B?5oSP77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytrZXZlci55YW5n?=
 =?UTF-8?B?PXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
 <20200428100019.19155-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <00538470-fd55-da15-780c-13ea90bd3f9e@rock-chips.com>
Date: Tue, 28 Apr 2020 22:12:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200428100019.19155-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071230_892422_6C0975BE 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Peter Robinson <pbrobinson@gmail.com>,
 u-boot@lists.denx.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yOCDkuIvljYg2OjAwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IE1vdmUgVS1Cb290
IHNwZWNpZmljIHByb3BlcnRpZXMgaW50byByazMzOTktcHVtYSB1LWJvb3QKPiBzcGVjaWZpYyBk
dHNpIGZpbGUuCj4KPiBUaGlzIHdvdWxkIGhlbHAgdG8gc3luYyB0aGUgZGV2aWNldHJlZXMgZnJv
bSBMaW51eCB3aGVuZXZlcgo+IHJlcXVpcmVkIGluc3RlYWQgb2YgYWRkaW5nIHNwZWNpZmljIG5v
ZGVzLgo+Cj4gQ2M6IFBldGVyIFJvYmluc29uIDxwYnJvYmluc29uQGdtYWlsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KCgpSZXZp
ZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywK
LSBLZXZlcgo+IC0tLQo+IENoYW5nZXMgZm9yIHYyOgo+IC0gbm9uZQo+Cj4gICBhcmNoL2FybS9k
dHMvcmszMzk5LXB1bWEtdS1ib290LmR0c2kgfCAxNiArKysrKysrKysrKysrKysrCj4gICBhcmNo
L2FybS9kdHMvcmszMzk5LXB1bWEuZHRzaSAgICAgICAgfCAxMSAtLS0tLS0tLS0tLQo+ICAgMiBm
aWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9kdHMvcmszMzk5LXB1bWEtdS1ib290LmR0c2kgYi9hcmNoL2FybS9k
dHMvcmszMzk5LXB1bWEtdS1ib290LmR0c2kKPiBpbmRleCA1MmY2MmI1ZDM5Li5lNjY0Nzc5MjI3
IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9yazMzOTktcHVtYS11LWJvb3QuZHRzaQo+ICsr
KyBiL2FyY2gvYXJtL2R0cy9yazMzOTktcHVtYS11LWJvb3QuZHRzaQo+IEBAIC0yMiwzICsyMiwx
OSBAQAo+ICAgICAgICAgIH07Cj4gICAKPiAgIH07Cj4gKwo+ICsmYmlvc19lbmFibGUgewo+ICsJ
dS1ib290LGRtLXByZS1yZWxvYzsKPiArfTsKPiArCj4gKyZncGlvMSB7Cj4gKwl1LWJvb3QsZG0t
cHJlLXJlbG9jOwo+ICt9Owo+ICsKPiArJmdwaW8zIHsKPiArCXUtYm9vdCxkbS1wcmUtcmVsb2M7
Cj4gK307Cj4gKwo+ICsmc3BpZmxhc2ggewo+ICsJdS1ib290LGRtLXByZS1yZWxvYzsKPiArfTsK
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1wdW1hLmR0c2kgYi9hcmNoL2FybS9k
dHMvcmszMzk5LXB1bWEuZHRzaQo+IGluZGV4IDU1OGI2MzM3ZGYuLjI0NmE4OTJjYjcgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzM5OS1wdW1hLmR0c2kKPiArKysgYi9hcmNoL2FybS9k
dHMvcmszMzk5LXB1bWEuZHRzaQo+IEBAIC05MSw3ICs5MSw2IEBACj4gICAJICovCj4gICAJYmlv
c19lbmFibGU6IGJpb3NfZW5hYmxlIHsKPiAgIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4
ZWQiOwo+IC0JCXUtYm9vdCxkbS1wcmUtcmVsb2M7Cj4gICAJCXJlZ3VsYXRvci1uYW1lID0gImJp
b3NfZW5hYmxlIjsKPiAgIAkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+ICAgCQlncGlvID0gPCZncGlv
MyBSS19QRDUgR1BJT19BQ1RJVkVfTE9XPjsKPiBAQCAtNTIwLDE0ICs1MTksNiBAQAo+ICAgCXN0
YXR1cyA9ICJva2F5IjsKPiAgIH07Cj4gICAKPiAtJmdwaW8xIHsKPiAtCXUtYm9vdCxkbS1wcmUt
cmVsb2M7Cj4gLX07Cj4gLQo+IC0mZ3BpbzMgewo+IC0JdS1ib290LGRtLXByZS1yZWxvYzsKPiAt
fTsKPiAtCj4gICAmcGluY3RybCB7Cj4gICAJLyogUGlucyB0aGF0IGFyZSBub3QgZXhwbGljaXRl
bHkgdXNlZCBieSBhbnkgZGV2aWNlcyAqLwo+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4gQEAgLTYzMyw4ICs2MjQsNiBAQAo+ICAgCSNzaXplLWNlbGxzID0gPDA+Owo+ICAgCj4gICAJ
c3BpZmxhc2g6IHcyNXEzMmR3QDAgewo+IC0JCXUtYm9vdCxkbS1wcmUtcmVsb2M7Cj4gLQo+ICAg
CQljb21wYXRpYmxlID0gImplZGVjLHNwaS1ub3IiOwo+ICAgCQlyZWcgPSA8MD47Cj4gICAJCXNw
aS1tYXgtZnJlcXVlbmN5ID0gPDQ5NTAwMDAwPjsKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
