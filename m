Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B698194F
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 14:30:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AlPnKeqtPJWXZazuH1IMcFN47P7yPIJ/my4IJIBdZDk=; b=u8Zyx2aEN6Q8149mS4gP9dgYF
	AKUrp3lO/hmLiNa4KQ52Su3vtQZZwCbNFYYPls8UGpHCn+Ma87vs7eLhXAthSF4h44fNu+lwHPsyf
	0OuYdZ9E7jVsBrO74ktZg1hHKJjMoltCon/Yx2dvGL8fYi8T7gRaZ3UnpxllEhpBUlvFQxWJJVmSd
	k1mW39cJxpTYVhlC5tBxHi4aU6ldEqdVZKrX3OgB7kTiVfGEmohSxZx9GjieMarNc0fUN1mieqGC/
	/LepkPBrKAz/tKBPuwu+8s1uCfgxolYt6lRjLnHW1//oUTW3kVok+FTQ5PrC4jajUOaA0BqNwf0yo
	ftg8MckSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huc8C-0000zD-Ud; Mon, 05 Aug 2019 12:30:28 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huc89-0000yu-O4
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 12:30:27 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.110])
 by regular1.263xmail.com (Postfix) with ESMTP id 20FEB2E6;
 Mon,  5 Aug 2019 20:30:23 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.33.93] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P6532T140645867935488S1565008221558082_; 
 Mon, 05 Aug 2019 20:30:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8ff0b2561acc77b74f9d8b10e7e8ad28>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: w.egorov@phytec.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 03/15] rockchip: rk3288: Print reset reason
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
 <20190729074711.16988-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <98408a3c-84bd-d54b-1b3a-49901c85ba3c@rock-chips.com>
Date: Mon, 5 Aug 2019 20:30:21 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729074711.16988-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_053025_973985_0E2BC201 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: u-boot@lists.denx.de, Wadim Egorov <w.egorov@phytec.de>,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8yOSDkuIvljYgzOjQ2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFByaW50IHRoZSBy
ZWFzb24gZm9yIHJlc2V0IGluc3RlYWQgb2Ygc3RvcmluZyBpdCBpbnRvCj4gZW52IHZhcmlhYmxl
IGluIHJrMzI4OC4KPgo+IFRoaXMgd291bGQgaGVscCB0byBmaW5kIHRoZSByZXNldCByZWFzb24g
ZGlyZWN0bHkKPiBvbiBVLUJvb3QgcHJvcGVyIGxvZ3MuCj4KPiBDYzogV2FkaW0gRWdvcm92IDx3
LmVnb3JvdkBwaHl0ZWMuZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1h
cnVsYXNvbHV0aW9ucy5jb20+Cj4gLS0tCj4gICBhcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4
OC1ib2FyZC5jIHwgMiArLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMyODgt
Ym9hcmQuYyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmszMjg4LWJvYXJkLmMKPiBpbmRleCBk
M2VjMTQxZmVhLi42MTMyNjRkN2VlIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtcm9ja2No
aXAvcmszMjg4LWJvYXJkLmMKPiArKysgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL3JrMzI4OC1i
b2FyZC5jCj4gQEAgLTcyLDcgKzcyLDcgQEAgc3RhdGljIHZvaWQgcmszMjg4X2RldGVjdF9yZXNl
dF9yZWFzb24odm9pZCkKPiAgIAkJcmVhc29uID0gInVua25vd24gcmVzZXQiOwo+ICAgCX0KPiAg
IAo+IC0JZW52X3NldCgicmVzZXRfcmVhc29uIiwgcmVhc29uKTsKPiArCXByaW50ZigiUmVzZXQg
Y2F1c2U6ICVzXG4iLCByZWFzb24pOwoKCldoeSB0aGlzIG5lZWQgdG8gc2V0IGFzIGVudiBiZWZv
cmU/IEkgZGlkbid0IHRvdWNoIHRoaXMgY29kZSB3aGVuIEkgbWlncmF0ZQoKdGhlIGNvZGUgdG8g
dXNlIGNvbW1vbiBib2FyZCBmaWxlLiBJZiB0aGlzIG5vIG5lZWQgdG8gc2V0IGVudiwgdGhlbiB0
aGlzCgpjYWxsIGJhY2sgY2FuIGdvdG8gYm9hcmRfaW5pdCgpIGluc3RlYWQgb2YgYm9hcmRfbGF0
ZV9pbml0KCkuCgoKVGhhbmtzLAoKLSBLZXZlcgoKPiAgIAo+ICAgCS8qCj4gICAJICogQ2xlYXIg
Y3J1X2dsYl9yc3Rfc3QsIHNvIHdlIGNhbiBkZXRlcm1pbmUgdGhlIGxhc3QgcmVzZXQgY2F1c2UK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
