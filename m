Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E190D6A96E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kp03HOFRkV/B0It7dlHRTwfGpjf2W6OWb4pgN2YcEF8=; b=lqz0QhtGCuimW9v3iW3o+lvz5
	BcCfwwcupcsipn+ca/bArBNH+fqf7IflBt29isif2p1JPIiVQltY12O/GYzKc6ESvINFs2V23Ijqh
	9RYajwi+pIn2JcboNElwMvjVW15+/kkDzSrJe7HI4MEw7YV2hHiDMrgsXzwUI3CUcUr+yDnyzbXBb
	SYs3FpLsHe3e7Fkok7YIvGsO7UXu7wEXoqXzak98OmrZdy1AE783SHZH5mVvorIU7TWm90XvoIFej
	i1qOGWFASkq3YNuhv1aYY7yqJY7lS0VdqlOGwbFDpYj9aeXOBEBHrYorpsaRTJL6c3tVXHC79vDCT
	PSOii68BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNMC-0004G0-59; Tue, 16 Jul 2019 13:19:00 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNM8-0004FP-Sw
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:18:58 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.103])
 by regular1.263xmail.com (Postfix) with ESMTP id C0AC65D2;
 Tue, 16 Jul 2019 21:18:54 +0800 (CST)
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
 P8795T139710712243968S1563283124834965_; 
 Tue, 16 Jul 2019 21:18:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <15a1b94696c916ec43ad26e64490e069>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 44/57] arm: include: rockchip: Add rk3399 pmu file
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-45-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7fc400bd-e114-4717-8b38-db87ca5e2775@rock-chips.com>
Date: Tue, 16 Jul 2019 21:18:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-45-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061857_369067_BDED7CB5 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBwbXUgaGVh
ZGVyIGZpbGUgZm9yIHJrMzM5OSBTb0MsIHRoaXMgd2lsbCBoZWxwCj4gdG8gY29uZmlndXJlIHBt
dSBpbiBzZHJhbSBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBh
bWFydWxhc29sdXRpb25zLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZb3VNaW4gQ2hlbiA8Y3ltQHJv
Y2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlhbmdAcm9jay1j
aGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIC4uLi9pbmNsdWRlL2FzbS9h
cmNoLXJvY2tjaGlwL3BtdV9yazMzOTkuaCAgICB8IDcyICsrKysrKysrKysrKysrKysrKysKPiAg
IDEgZmlsZSBjaGFuZ2VkLCA3MiBpbnNlcnRpb25zKCspCj4gICBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9wbXVfcmszMzk5LmgKPgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3BtdV9yazMzOTkuaCBi
L2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvcG11X3JrMzM5OS5oCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi5mMTA5NmRjY2NlCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvcG11X3JrMzM5
OS5oCj4gQEAgLTAsMCArMSw3MiBAQAo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogICAg
IEdQTC0yLjArICovCj4gKy8qCj4gKyAqIChDKSBDb3B5cmlnaHQgMjAxOCBSb2NrY2hpcCBFbGVj
dHJvbmljcyBDby4sIEx0ZC4KPiArICoKPiArICovCj4gKwo+ICsjaWZuZGVmIF9fU09DX1JPQ0tD
SElQX1JLMzM5OV9QTVVfSF9fCj4gKyNkZWZpbmUgX19TT0NfUk9DS0NISVBfUkszMzk5X1BNVV9I
X18KPiArCj4gK3N0cnVjdCByazMzOTlfcG11X3JlZ3Mgewo+ICsJdTMyIHBtdV93YWtldXBfY2Zn
WzVdOwo+ICsJdTMyIHBtdV9wd3Jkbl9jb247Cj4gKwl1MzIgcG11X3B3cmRuX3N0Owo+ICsJdTMy
IHBtdV9wbGxfY29uOwo+ICsJdTMyIHBtdV9wd3Jtb2RlX2NvbjsKPiArCXUzMiBwbXVfc2Z0X2Nv
bjsKPiArCXUzMiBwbXVfaW50X2NvbjsKPiArCXUzMiBwbXVfaW50X3N0Owo+ICsJdTMyIHBtdV9n
cGlvMF9wb3NfaW50X2NvbjsKPiArCXUzMiBwbXVfZ3BpbzBfbmV0X2ludF9jb247Cj4gKwl1MzIg
cG11X2dwaW8xX3Bvc19pbnRfY29uOwo+ICsJdTMyIHBtdV9ncGlvMV9uZXRfaW50X2NvbjsKPiAr
CXUzMiBwbXVfZ3BpbzBfcG9zX2ludF9zdDsKPiArCXUzMiBwbXVfZ3BpbzBfbmV0X2ludF9zdDsK
PiArCXUzMiBwbXVfZ3BpbzFfcG9zX2ludF9zdDsKPiArCXUzMiBwbXVfZ3BpbzFfbmV0X2ludF9z
dDsKPiArCXUzMiBwbXVfcHdyZG5faW50ZW47Cj4gKwl1MzIgcG11X3B3cmRuX3N0YXR1czsKPiAr
CXUzMiBwbXVfd2FrZXVwX3N0YXR1czsKPiArCXUzMiBwbXVfYnVzX2NscjsKPiArCXUzMiBwbXVf
YnVzX2lkbGVfcmVxOwo+ICsJdTMyIHBtdV9idXNfaWRsZV9zdDsKPiArCXUzMiBwbXVfYnVzX2lk
bGVfYWNrOwo+ICsJdTMyIHBtdV9jY2k1MDBfY29uOwo+ICsJdTMyIHBtdV9hZGI0MDBfY29uOwo+
ICsJdTMyIHBtdV9hZGI0MDBfc3Q7Cj4gKwl1MzIgcG11X3Bvd2VyX3N0Owo+ICsJdTMyIHBtdV9j
b3JlX3B3cl9zdDsKPiArCXUzMiBwbXVfb3NjX2NudDsKPiArCXUzMiBwbXVfcGxsbG9ja19jbnQ7
Cj4gKwl1MzIgcG11X3BsbHJzdF9jbnQ7Cj4gKwl1MzIgcG11X3N0YWJsZV9jbnQ7Cj4gKwl1MzIg
cG11X2RkcmlvX3B3cm9uX2NudDsKPiArCXUzMiBwbXVfd2FrZXVwX3JzdF9jbHJfY250Owo+ICsJ
dTMyIHBtdV9kZHJfc3JlZl9zdDsKPiArCXUzMiBwbXVfc2N1X2xfcHdyZG5fY250Owo+ICsJdTMy
IHBtdV9zY3VfbF9wd3J1cF9jbnQ7Cj4gKwl1MzIgcG11X3NjdV9iX3B3cmRuX2NudDsKPiArCXUz
MiBwbXVfc2N1X2JfcHdydXBfY250Owo+ICsJdTMyIHBtdV9ncHVfcHdyZG5fY250Owo+ICsJdTMy
IHBtdV9ncHVfcHdydXBfY250Owo+ICsJdTMyIHBtdV9jZW50ZXJfcHdyZG5fY250Owo+ICsJdTMy
IHBtdV9jZW50ZXJfcHdydXBfY250Owo+ICsJdTMyIHBtdV90aW1lb3V0X2NudDsKPiArCXUzMiBw
bXVfY3B1MGFwbV9jb247Cj4gKwl1MzIgcG11X2NwdTFhcG1fY29uOwo+ICsJdTMyIHBtdV9jcHUy
YXBtX2NvbjsKPiArCXUzMiBwbXVfY3B1M2FwbV9jb247Cj4gKwl1MzIgcG11X2NwdTBicG1fY29u
Owo+ICsJdTMyIHBtdV9jcHUxYnBtX2NvbjsKPiArCXUzMiBwbXVfbm9jX2F1dG9fZW5hOwo+ICsJ
dTMyIHBtdV9wd3Jkbl9jb24xOwo+ICsJdTMyIHJlc2VydmVkMFsweDRdOwo+ICsJdTMyIHBtdV9z
eXNfcmVnX3JlZzA7Cj4gKwl1MzIgcG11X3N5c19yZWdfcmVnMTsKPiArCXUzMiBwbXVfc3lzX3Jl
Z19yZWcyOwo+ICsJdTMyIHBtdV9zeXNfcmVnX3JlZzM7Cj4gK307Cj4gKwo+ICtjaGVja19tZW1i
ZXIocmszMzk5X3BtdV9yZWdzLCBwbXVfc3lzX3JlZ19yZWczLCAweGZjKTsKPiArCj4gKyNlbmRp
ZgkvKiBfX1NPQ19ST0NLQ0hJUF9SSzMzOTlfUE1VX0hfXyAqLwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
