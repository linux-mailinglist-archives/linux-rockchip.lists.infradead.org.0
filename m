Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A406A2F2
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u3mACzGm2Bfmo4uCshzlXO3bow5KPj4m9EeKNNC61jQ=; b=Ol3YamE73lJ5g9akrT+Kc+DZ1
	xGZXO6RE9gl4kqMvM++Pb095G4RUbnDlwc1ZxyB9wk0u0Y+dcL835Q2eZkw0oULuyY0ckZkeYr65X
	8ixQrmA1/PmTL6C/Ux7Vp1rOs4GHWMXvUqXFuNW/PJaB3RHu+fclzIPL9TdzxuFC0VnQ0yRgs8zpP
	oCaJR8yeU5nFN0j5SU3joOTTthlThpIlKGhoPXKEFghAibXlQOemT4s1N1Y8D+sUpYoFDKoONok0Y
	PzKJxcsSjlI4UKi8hUi/4d9BXleLcXe8PwiDupiCYh/k0RDTb7ip0t3UvoiEebGKH1fAI9WAKfLge
	wKZIy883A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHuo-0002fd-Ub; Tue, 16 Jul 2019 07:30:22 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHul-0002f4-8a
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:30:20 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.29])
 by regular1.263xmail.com (Postfix) with ESMTP id 43CF2501;
 Tue, 16 Jul 2019 15:30:16 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P21432T140685829187328S1563262206476756_; 
 Tue, 16 Jul 2019 15:30:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a5db0e1dabcbc67ca1c8959489ac22e9>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 04/15] ram: rk3399: Handle pctl_cfg return type
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-5-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9b82d481-0b98-d6b9-d9c3-8216b8aff84d@rock-chips.com>
Date: Tue, 16 Jul 2019 15:30:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-5-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003019_487279_8695B4C4 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBwcm9wZXIg
cmV0dXJuIHR5cGUgaGFuZGxpbmcgb2YgcGN0bF9jZmcgd2l0aAo+IG1lYW5pbmdmdWwgcHJpbnQg
c3RhdGVtZW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNv
bHV0aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNo
aXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2No
aXAvc2RyYW1fcmszMzk5LmMgfCA4ICsrKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3Jv
Y2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5
LmMKPiBpbmRleCBjOTE4YzJlNTg4Li5kZTVkOGMxYjVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
cmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVycy9yYW0vcm9ja2NoaXAv
c2RyYW1fcmszMzk5LmMKPiBAQCAtMTA2Myw2ICsxMDYzLDcgQEAgc3RhdGljIGludCBzZHJhbV9p
bml0KHN0cnVjdCBkcmFtX2luZm8gKmRyYW0sCj4gICAJdW5zaWduZWQgY2hhciBkcmFtdHlwZSA9
IHBhcmFtcy0+YmFzZS5kcmFtdHlwZTsKPiAgIAl1bnNpZ25lZCBpbnQgZGRyX2ZyZXEgPSBwYXJh
bXMtPmJhc2UuZGRyX2ZyZXE7Cj4gICAJaW50IGNoYW5uZWw7Cj4gKwlpbnQgcmV0Owo+ICAgCj4g
ICAJZGVidWcoIlN0YXJ0aW5nIFNEUkFNIGluaXRpYWxpemF0aW9uLi4uXG4iKTsKPiAgIAo+IEBA
IC0xMDgyLDkgKzEwODMsMTAgQEAgc3RhdGljIGludCBzZHJhbV9pbml0KHN0cnVjdCBkcmFtX2lu
Zm8gKmRyYW0sCj4gICAJCWlmIChjaGFubmVsID49IHBhcmFtcy0+YmFzZS5udW1fY2hhbm5lbHMp
Cj4gICAJCQljb250aW51ZTsKPiAgIAo+IC0JCWlmIChwY3RsX2NmZyhjaGFuLCBjaGFubmVsLCBw
YXJhbXMpICE9IDApIHsKPiAtCQkJcHJpbnRmKCJwY3RsX2NmZyBmYWlsLCByZXNldFxuIik7Cj4g
LQkJCXJldHVybiAtRUlPOwo+ICsJCXJldCA9IHBjdGxfY2ZnKGNoYW4sIGNoYW5uZWwsIHBhcmFt
cyk7Cj4gKwkJaWYgKHJldCA8IDApIHsKPiArCQkJcHJpbnRmKCIlczogcGN0bCBjb25maWcgZmFp
bGVkXG4iLCBfX2Z1bmNfXyk7Cj4gKwkJCXJldHVybiByZXQ7Cj4gICAJCX0KPiAgIAo+ICAgCQkv
KiBMUEREUjIvTFBERFIzIG5lZWQgdG8gd2FpdCBEQUkgY29tcGxldGUsIG1heCAxMHVzICovCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
