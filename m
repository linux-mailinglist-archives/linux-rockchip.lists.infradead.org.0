Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75616A326
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EsfUQcbJXtp8hbQq66EfaH5jSWq7OiCtRDnKAVDtHRY=; b=L2coCe6ktNULOZjUJHtqof87h
	Td9exhy6UPE7SbLbDxKdHw2Uz7cl0wrO/zNs7Si4jfqHxzNZWoMNwUmBunCi+YMTqGgRlu3OiHlvP
	zcdojQtHtwDTufrvfPs9cQGW5NbqeAGi/ywvDEdz/0nZbIZUSvtiGuCa6DN8hN42gjCVNNocWf9+6
	kHbte4+wwI65elfPx6UqvU3ELAdmAExjgL67rK9zKNbjosg0ShNoJUX3SPxA6oc57vFM4GYx1jxX1
	WxMWGPcPTK1pz7uxLApzL4LuVS4VRhXtZZR+mJCyYlyh0bxdHGZUyFLN7sMz52cdAVSGjLZrieCPn
	7bxnCQd5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI8d-0007Fq-Ld; Tue, 16 Jul 2019 07:44:39 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI8Z-0007F6-Sf
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:44:37 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.190])
 by regular1.263xmail.com (Postfix) with ESMTP id E9FA61D2;
 Tue, 16 Jul 2019 15:44:32 +0800 (CST)
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
 P26217T140226242537216S1563263071950692_; 
 Tue, 16 Jul 2019 15:44:32 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a95f1db5c33bac9045055b69d1134280>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 15/18] ram: rk3399: Compute stride for 1 channel a
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-16-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2f87c2fb-2030-ca77-8ee0-2a50f1a3da44@rock-chips.com>
Date: Tue, 16 Jul 2019 15:44:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-16-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004436_102138_626E2788 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzdHJpZGUg
Y29tcHV0YXRpb24gZm9yIHRoZSBzZHJhbSB3aGljaCBzdXBwb3J0Cj4gc2luZ2xlIGNoYW5uZWwg
YQo+Cj4gVGhpcyBjb25maWd1cmF0aW9uIGF2YWlsYWJsZSBpbiBOYW5vUGkgTkVPNCBhbmQgdGhl
Cj4gc2FtZSBjYW4gd29yayB3aXRoIGV4aXN0aW5nIHJrMzM5OS1zZHJhbS1kZHIzLTE4NjYuZHRz
aQo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4gPGN5bUByb2NrLWNoaXBzLmNvbT4KClJl
dmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtz
LAogwqAtIEtldmVyCj4gLS0tCj4gICBkcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTku
YyB8IDQgKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0v
cm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCBjNjI2ZWY2MDJjLi44YmJhY2I1Mjc1IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIv
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMTIxMSw2ICsxMjExLDEw
IEBAIHN0YXRpYyB1bnNpZ25lZCBjaGFyIGNhbGN1bGF0ZV9zdHJpZGUoc3RydWN0IHJrMzM5OV9z
ZHJhbV9wYXJhbXMgKnBhcmFtcykKPiAgIAkJY2hpbmZvIHw9IDEgPDwgY2hhbm5lbDsKPiAgIAl9
Cj4gICAKPiArCS8qIHN0cmlkZSBjYWxjdWxhdGlvbiBmb3IgMSBjaGFubmVsICovCj4gKwlpZiAo
cGFyYW1zLT5iYXNlLm51bV9jaGFubmVscyA9PSAxICYmIGNoaW5mbyAmIDEpCj4gKwkJcmV0dXJu
IDB4MTc7CS8qIGNoYW5uZWwgYSAqLwo+ICsKPiAgIAkvKiBzdHJpZGUgY2FsY3VsYXRpb24gZm9y
IDIgY2hhbm5lbHMsIGRlZmF1bHQgZ3N0cmlkZSB0eXBlIGlzIDI1NkIgKi8KPiAgIAlpZiAoY2hf
Y2FwWzBdID09IGNoX2NhcFsxXSkgewo+ICAgCQljYXAgPSBjaF9jYXBbMF0gKyBjaF9jYXBbMV07
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
