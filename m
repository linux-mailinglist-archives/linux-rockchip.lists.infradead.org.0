Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FF012CC10
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 04:07:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xCXxB2ZEUTons3fdAxurstcMDugpOS4xv2vzdt6cE+s=; b=Zc39gxfDrXdKTZ3iTg4IiHG+H
	frSLNVH9bXbw/uAzvIWJ73jd1Y/69bPjl661oYhWtELVeQdkHeRwxd23arKUSyniXMOhlYfzhsZSm
	lon06NjHJ2RMLtQmU80DmsoSmeQ/kg2/fMDcb4mqktkPfNluJIAV9PwqHXtpOW4pigyi0n1dd/38X
	K2209MEvqf2zcQDQGSFqvUbw0x91t07OIKSm72pLryYZVpJSDqaR6UtRZjZIq8hyqA6YpD8TgreKB
	VCCtUqnuNKrG1MA+hgLZWSn56zvptxMsjFIKEQAAUQZTCfvvrw/lkGRAdg9+poaeAQRB/7Nru8CWJ
	pIePcFR5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1illPO-0000kI-17; Mon, 30 Dec 2019 03:07:54 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1illPL-0000jz-3Z
 for linux-rockchip@lists.infradead.org; Mon, 30 Dec 2019 03:07:52 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id C74EF564;
 Mon, 30 Dec 2019 11:07:49 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3828T140410389260032S1577675268665487_; 
 Mon, 30 Dec 2019 11:07:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <84a6f1165312ff2f3612340e1fc60a91>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: trini@konsulko.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6aa9aecb-11fb-087e-b140-d26ee76b4f08@rock-chips.com>
Date: Mon, 30 Dec 2019 11:07:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191221075440.6944-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_190751_482127_936D6C01 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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
 Tom Rini <trini@konsulko.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3cm90ZToKPiBBZGQgZGlzdHJv
IGJvb3QgY29tbWFuZCBzdXBwb3J0IGZvciBTUEkgZmxhc2guCj4KPiBUaGlzIGRpc3RybyBib290
IHdpbGwgcmVhZCB0aGUgYm9vdCBzY3JpcHQgYXQgc3BlY2lmaWMKPiBsb2NhdGlvbiBhdCB0aGUg
Zmxhc2ggYW5kIHN0YXJ0IHNvdXJjaW5nIHRoZSBzYW1lLgo+Cj4gVGhlIGNvbW1vbiBtYWNybyBs
aWtlIEJPT1RFTlZfU0hBUkVEX0ZMQVNIIHdvdWxkIGhlbHAKPiB0byBleHRlbmQgdGhlIHN1cHBv
cnQgZm9yIG5hbmQgZmxhc2ggaW4gZnV0dXJlLgo+Cj4gQ2M6IFRvbSBSaW5pIDx0cmluaUBrb25z
dWxrby5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0
aW9ucy5jb20+ClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMu
Y29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICBpbmNsdWRlL2NvbmZpZ19kaXN0cm9fYm9v
dGNtZC5oIHwgMzUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvY29uZmln
X2Rpc3Ryb19ib290Y21kLmggYi9pbmNsdWRlL2NvbmZpZ19kaXN0cm9fYm9vdGNtZC5oCj4gaW5k
ZXggZmMwOTM1ZmEyMS4uZDY4Yjc5ZTI5MCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2NvbmZpZ19k
aXN0cm9fYm9vdGNtZC5oCj4gKysrIGIvaW5jbHVkZS9jb25maWdfZGlzdHJvX2Jvb3RjbWQuaAo+
IEBAIC00Myw2ICs0MywyMiBAQAo+ICAgI2RlZmluZSBCT09URU5WX0RFVl9OQU1FX0JMS0RFVihk
ZXZ0eXBldSwgZGV2dHlwZWwsIGluc3RhbmNlKSBcCj4gICAJI2RldnR5cGVsICNpbnN0YW5jZSAi
ICIKPiAgIAo+ICsjZGVmaW5lIEJPT1RFTlZfU0hBUkVEX1NGX0JPRFkoZGV2dHlwZWwpIFwKPiAr
CQkiaWYgIiAjZGV2dHlwZWwgIiBwcm9iZSAke2Rldm51bX07IHRoZW4gIiBcCj4gKwkJCSJkZXZ0
eXBlPSIgI2RldnR5cGVsICI7ICIJICBcCj4gKwkJCSJydW4gc2Nhbl9mbGFzaF9mb3Jfc2NyaXB0
czsgIgkgIFwKPiArCQkiZmlcMCIKPiArCj4gKyNkZWZpbmUgQk9PVEVOVl9TSEFSRURfRkxBU0go
ZGV2dHlwZWwpIFwKPiArCSNkZXZ0eXBlbCAiX2Jvb3Q9IiBcCj4gKwlCT09URU5WX1NIQVJFRF9T
Rl9CT0RZKGRldnR5cGVsKQo+ICsKPiArI2RlZmluZSBCT09URU5WX0RFVl9GTEFTSChkZXZ0eXBl
dSwgZGV2dHlwZWwsIGluc3RhbmNlKSBcCj4gKwlCT09URU5WX0RFVl9CTEtERVYoZGV2dHlwZXUs
IGRldnR5cGVsLCBpbnN0YW5jZSkKPiArCj4gKyNkZWZpbmUgQk9PVEVOVl9ERVZfTkFNRV9GTEFT
SChkZXZ0eXBldSwgZGV2dHlwZWwsIGluc3RhbmNlKSBcCj4gKwlCT09URU5WX0RFVl9OQU1FX0JM
S0RFVihkZXZ0eXBldSwgZGV2dHlwZWwsIGluc3RhbmNlKQo+ICsKPiAgICNpZmRlZiBDT05GSUdf
U0FOREJPWAo+ICAgI2RlZmluZSBCT09URU5WX1NIQVJFRF9IT1NUCUJPT1RFTlZfU0hBUkVEX0JM
S0RFVihob3N0KQo+ICAgI2RlZmluZSBCT09URU5WX0RFVl9IT1NUCUJPT1RFTlZfREVWX0JMS0RF
Vgo+IEBAIC0zOTgsNiArNDE0LDE4IEBACj4gICAJQk9PVF9UQVJHRVRfREVWSUNFU19yZWZlcmVu
Y2VzX1BYRV93aXRob3V0X0NPTkZJR19DTURfREhDUF9vcl9QWEUKPiAgICNlbmRpZgo+ICAgCj4g
KyNpZiBkZWZpbmVkKENPTkZJR19DTURfU0YpCj4gKyNkZWZpbmUgQk9PVEVOVl9TSEFSRURfU0YJ
Qk9PVEVOVl9TSEFSRURfRkxBU0goc2YpCj4gKyNkZWZpbmUgQk9PVEVOVl9ERVZfU0YJCUJPT1RF
TlZfREVWX0ZMQVNICj4gKyNkZWZpbmUgQk9PVEVOVl9ERVZfTkFNRV9TRglCT09URU5WX0RFVl9O
QU1FX0ZMQVNICj4gKyNlbHNlCj4gKyNkZWZpbmUgQk9PVEVOVl9TSEFSRURfU0YKPiArI2RlZmlu
ZSBCT09URU5WX0RFVl9TRiBcCj4gKwlCT09UX1RBUkdFVF9ERVZJQ0VTX3JlZmVyZW5jZXNfU0Zf
d2l0aG91dF9DT05GSUdfQ01EX1NGCj4gKyNkZWZpbmUgQk9PVEVOVl9ERVZfTkFNRV9TRiBcCj4g
KwlCT09UX1RBUkdFVF9ERVZJQ0VTX3JlZmVyZW5jZXNfU0Zfd2l0aG91dF9DT05GSUdfQ01EX1NG
Cj4gKyNlbmRpZgo+ICsKPiAgICNkZWZpbmUgQk9PVEVOVl9ERVZfTkFNRShkZXZ0eXBldSwgZGV2
dHlwZWwsIGluc3RhbmNlKSBcCj4gICAJQk9PVEVOVl9ERVZfTkFNRV8jI2RldnR5cGV1KGRldnR5
cGV1LCBkZXZ0eXBlbCwgaW5zdGFuY2UpCj4gICAjZGVmaW5lIEJPT1RFTlZfQk9PVF9UQVJHRVRT
IFwKPiBAQCAtNDEyLDYgKzQ0MCw3IEBACj4gICAJQk9PVEVOVl9TSEFSRURfVVNCIFwKPiAgIAlC
T09URU5WX1NIQVJFRF9TQVRBIFwKPiAgIAlCT09URU5WX1NIQVJFRF9TQ1NJIFwKPiArCUJPT1RF
TlZfU0hBUkVEX1NGIFwKPiAgIAlCT09URU5WX1NIQVJFRF9OVk1FIFwKPiAgIAlCT09URU5WX1NI
QVJFRF9JREUgXAo+ICAgCUJPT1RFTlZfU0hBUkVEX1VCSUZTIFwKPiBAQCAtNDM2LDYgKzQ2NSwx
MiBAQAo+ICAgCQkJImVjaG8gU0NSSVBUIEZBSUxFRDogY29udGludWluZy4uLjsgIiAgICAgICAg
ICAgICBcCj4gICAJCSJmaVwwIiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBcCj4gICAJXAo+ICsJInNjYW5fZmxhc2hfZm9yX3NjcmlwdHM9IiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ICsJCSIke2RldnR5cGV9IHJl
YWQgJHtzY3JpcHRhZGRyfSAiICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gKwkJCSIke3Nj
cmlwdF9vZmZzZXRfZn0gJHtzY3JpcHRfc2l6ZV9mfTsgIgkJICBcCj4gKwkJInNvdXJjZSAke3Nj
cmlwdGFkZHJ9OyAiCQkJCSAgXAo+ICsJCSJlY2hvIFNDUklQVCBGQUlMRUQ6IGNvbnRpbnVpbmcu
Li5cMCIJCQkgIFwKPiArCVwKPiAgIAkiYm9vdF9hX3NjcmlwdD0iICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gICAJCSJsb2FkICR7ZGV2dHlwZX0g
JHtkZXZudW19OiR7ZGlzdHJvX2Jvb3RwYXJ0fSAiICAgICAgICAgICBcCj4gICAJCQkiJHtzY3Jp
cHRhZGRyfSAke3ByZWZpeH0ke3NjcmlwdH07ICIgICAgICAgICAgICAgIFwKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
