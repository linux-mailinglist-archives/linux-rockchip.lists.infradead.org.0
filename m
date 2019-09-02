Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C61A51C8
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Sep 2019 10:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XyGScPvO+QDoRZ7gz7dFarkmqlC3TXzawnUuN2lk6qE=; b=CbHn5W9Ii4kDm2tHWvYlusSzs
	EXc128ybVQCcrG9lQVlf/ruk6246sKbbMJxxBoF7MSxt8JyHTAsemx3U+2WmNoS0a6Hs9ofxZkZ50
	q1yed1n/yLeKmw5Gze5VXphFh+yxfQGmiNxlr96SQ4PR8/kVzJQvlgkpTn9ACTCIGmNe0O4DKsyyz
	FJQK0LRrND0nGrwcUcAcuBpOMJ5JHgZGR0giHz/79MyP50D8S3suDiDwZM5pk7xxqt05BHN/xRd+U
	1boINX9Hi7/4sY5A6fbN7+ChidY+2zmIazrArhgyRWGUCy1hfI1Mb0dw1HpEf4X/DVb+yHXT26Jd9
	K3Q1N5bew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4hnK-0002At-RT; Mon, 02 Sep 2019 08:34:38 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4hn6-00021s-SB
 for linux-rockchip@lists.infradead.org; Mon, 02 Sep 2019 08:34:28 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id EE1102B9;
 Mon,  2 Sep 2019 16:34:12 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P14672T140431853606656S1567413238141686_; 
 Mon, 02 Sep 2019 16:34:06 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <731e7f2179c63f6116c5e14ba5bfc8df>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 01/16] rockchip: Add cpu-info
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
 <20190826182111.30999-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <f8a53239-d91c-5f19-817b-6ae325601b3f@rock-chips.com>
Date: Mon, 2 Sep 2019 16:33:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190826182111.30999-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_013426_531192_675AA255 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvOC8yNyDkuIrljYgyOjIwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBjcHUgaW5m
b3JtYXRpb24gZm9yIHJvY2tjaGlwIHNvYy4KPgo+IFRoaXMgd291bGQgaGVscCB0byBwcmludCB0
aGUgU29DIGZhbWlseSBudW1iZXIsIHdpdGgKPiBhc3NvY2lhdGVkIHRlbXBhcmF0dXJlLCBjbG9j
ayBhbmQgcmVhc29uIGZvciByZXNldCBldGMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtp
IDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxr
ZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBhcmNo
L2FybS9tYWNoLXJvY2tjaGlwL01ha2VmaWxlICAgfCAgMSArCj4gICBhcmNoL2FybS9tYWNoLXJv
Y2tjaGlwL2NwdS1pbmZvLmMgfCAxNiArKysrKysrKysrKysrKysrCj4gICAyIGZpbGVzIGNoYW5n
ZWQsIDE3IGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNo
LXJvY2tjaGlwL2NwdS1pbmZvLmMKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLXJvY2tj
aGlwL01ha2VmaWxlIGIvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9NYWtlZmlsZQo+IGluZGV4IDIw
N2Y5MDAwMTEuLjc2ZmM0OTQyZWUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vbWFjaC1yb2NrY2hp
cC9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvTWFrZWZpbGUKPiBAQCAt
MjAsNiArMjAsNyBAQCBpZmVxICgkKENPTkZJR19TUExfQlVJTEQpJChDT05GSUdfVFBMX0JVSUxE
KSwpCj4gICAjIHdlIGNhbiBoYXZlIHRoZSBwcmVwcm9jZXNzb3IgY29ycmVjdGx5IHJlY29nbmlz
ZSBib3RoIDB4MCBhbmQgMAo+ICAgIyBtZWFuaW5nICJ0dXJuIGl0IG9mZiIuCj4gICBvYmoteSAr
PSBib290X21vZGUubwo+ICtvYmotJChDT05GSUdfRElTUExBWV9DUFVJTkZPKSArPSBjcHUtaW5m
by5vCj4gICBvYmotJChDT05GSUdfUk9DS0NISVBfQ09NTU9OX0JPQVJEKSArPSBib2FyZC5vCj4g
ICBlbmRpZgo+ICAgCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvY3B1LWlu
Zm8uYyBiL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvY3B1LWluZm8uYwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMC4uOTBjZTY1ZDlmZgo+IC0tLSAvZGV2L251bGwKPiAr
KysgYi9hcmNoL2FybS9tYWNoLXJvY2tjaGlwL2NwdS1pbmZvLmMKPiBAQCAtMCwwICsxLDE2IEBA
Cj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ICsvKgo+
ICsgKiAoQykgQ29weXJpZ2h0IDIwMTkgQW1hcnVsYSBTb2x1dGlvbnMuCj4gKyAqIEF1dGhvcjog
SmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gKyAqLwo+ICsKPiArI2lu
Y2x1ZGUgPGNvbW1vbi5oPgo+ICsKPiAraW50IHByaW50X2NwdWluZm8odm9pZCkKPiArewo+ICsJ
cHJpbnRmKCJTb0M6IFJvY2tjaGlwICVzXG4iLCBDT05GSUdfU1lTX1NPQyk7Cj4gKwo+ICsJLyog
VE9ETyBwcmludCBvcGVyYXRpbmcgdGVtcGFyYXR1cmUgYW5kIGNsb2NrICovCj4gKwo+ICsJcmV0
dXJuIDA7Cj4gK30KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
