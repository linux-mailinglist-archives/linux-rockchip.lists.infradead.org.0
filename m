Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F996A943
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wzoq8nwefl8swqEP4jFwlWaiCwoxi3sIMHKdtX/2eLA=; b=nLILK5WAJ1/NcOEsSnmFteoR6
	tyJwj4fLYe0vMsNqVj/AfOYj4vY8Ncu/c9cjabgNYqKcAZJtl9gSiCTmYFOmVvbojaov378ZP1qZk
	skx+paqNtxlAaxd/J3ai8hQR2/jZLrB1SBQ9FhLw1yf+0aOqPQGu+dJvhJCmHarDXCkir27M3CZd0
	a9fPES6NuYciLZegBcS+PQ/vVMpt/BzIB3Vr45BklKo+G1uIwjCHUSTShcM8NvdCM3YfSG6WoS65D
	YT/2mKQ4KNWEI9RO6BcZ1FHuZ8XhVaDctclgydmwNhAhf6JFhxpLLq2UQyZkqyqjHfXubR9zW9x3q
	IofQbOO2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNFc-0001JE-VF; Tue, 16 Jul 2019 13:12:12 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNFZ-00019m-HB
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:12:11 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id 8F900399;
 Tue, 16 Jul 2019 21:12:06 +0800 (CST)
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
 P25752T140261820724992S1563282721983934_; 
 Tue, 16 Jul 2019 21:12:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0e3bd535eb5a98e3a080a778f9866600>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 23/57] ram: rk3399: Move mode_sel assignment
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-24-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <919653b0-9265-ef8c-60d5-9cd339950770@rock-chips.com>
Date: Tue, 16 Jul 2019 21:12:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-24-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061209_763233_7668298A 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.199 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IG1vZGVfc2VsIGFz
c2lnbm1lbnQgaXMgYmFzZWQgb24gZHJhbSB0eXBlLgo+Cj4gSW4gcGh5X2lvX2NvbmZpZywgYWxy
ZWFkeSBoYXZlIHZyZWYgc2V0dGluZyBiYXNlZAo+IG9uIHRoZSBkcmFtIHR5cGUsIHNvIG1vdmUg
dGhpcyBtb2RlX3NlbCBhc3NpZ25tZW50Cj4gb24gdnJlZiBzZXR0aW5nIGFyZWEuCj4KPiBObyBm
dW5jdGlvbmFsaXR5IGNoYW5nZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2Fu
QGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPEtldmVyLnlh
bmdAcm9jay1jaGlwcy5jb20+CgpUaGFua3MsCiDCoC0gS2V2ZXIKPiAtLS0KPiAgIGRyaXZlcnMv
cmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIHwgMTIgKysrLS0tLS0tLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jIGIvZHJpdmVycy9yYW0vcm9ja2No
aXAvc2RyYW1fcmszMzk5LmMKPiBpbmRleCA3MTE0NzcxODhlLi44OGZiZmE0NDBkIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gKysrIGIvZHJpdmVy
cy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiBAQCAtMjA1LDYgKzIwNSw3IEBAIHN0YXRp
YyBpbnQgcGh5X2lvX2NvbmZpZyhjb25zdCBzdHJ1Y3QgY2hhbl9pbmZvICpjaGFuLAo+ICAgCQl2
cmVmX3ZhbHVlX2RxID0gMHgxZjsKPiAgIAkJdnJlZl9tb2RlX2FjID0gMHg2Owo+ICAgCQl2cmVm
X3ZhbHVlX2FjID0gMHgxZjsKPiArCQltb2RlX3NlbCA9IDB4NjsKPiAgIAl9IGVsc2UgaWYgKHBh
cmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBMUEREUjMpIHsKPiAgIAkJaWYgKHBhcmFtcy0+YmFzZS5v
ZHQgPT0gMSkgewo+ICAgCQkJdnJlZl9tb2RlX2RxID0gMHg1OyAgLyogTFBERFIzIE9EVCAqLwo+
IEBAIC0yNjUsMTIgKzI2NiwxNCBAQCBzdGF0aWMgaW50IHBoeV9pb19jb25maWcoY29uc3Qgc3Ry
dWN0IGNoYW5faW5mbyAqY2hhbiwKPiAgIAkJfQo+ICAgCQl2cmVmX21vZGVfYWMgPSAweDI7Cj4g
ICAJCXZyZWZfdmFsdWVfYWMgPSAweDFmOwo+ICsJCW1vZGVfc2VsID0gMHgwOwo+ICAgCX0gZWxz
ZSBpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IEREUjMpIHsKPiAgIAkJLyogRERSM0wgKi8K
PiAgIAkJdnJlZl9tb2RlX2RxID0gMHgxOwo+ICAgCQl2cmVmX3ZhbHVlX2RxID0gMHgxZjsKPiAg
IAkJdnJlZl9tb2RlX2FjID0gMHgxOwo+ICAgCQl2cmVmX3ZhbHVlX2FjID0gMHgxZjsKPiArCQlt
b2RlX3NlbCA9IDB4MTsKPiAgIAl9IGVsc2Ugewo+ICAgCQlkZWJ1ZygiVW5rbm93biBEUkFNIHR5
cGUuXG4iKTsKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gQEAgLTI5MiwxNSArMjk1LDYgQEAgc3Rh
dGljIGludCBwaHlfaW9fY29uZmlnKGNvbnN0IHN0cnVjdCBjaGFuX2luZm8gKmNoYW4sCj4gICAJ
LyogUEhZXzkxNSBQSFlfUEFEX1ZSRUZfQ1RSTF9BQyAxMmJpdHMgb2Zmc2V0XzE2ICovCj4gICAJ
Y2xyc2V0Yml0c19sZTMyKCZkZW5hbGlfcGh5WzkxNV0sIDB4ZmZmIDw8IDE2LCByZWdfdmFsdWUg
PDwgMTYpOwo+ICAgCj4gLQlpZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkKPiAt
CQltb2RlX3NlbCA9IDB4NjsKPiAtCWVsc2UgaWYgKHBhcmFtcy0+YmFzZS5kcmFtdHlwZSA9PSBM
UEREUjMpCj4gLQkJbW9kZV9zZWwgPSAweDA7Cj4gLQllbHNlIGlmIChwYXJhbXMtPmJhc2UuZHJh
bXR5cGUgPT0gRERSMykKPiAtCQltb2RlX3NlbCA9IDB4MTsKPiAtCWVsc2UKPiAtCQlyZXR1cm4g
LUVJTlZBTDsKPiAtCj4gICAJLyogUEhZXzkyNCBQSFlfUEFEX0ZEQktfRFJJVkUgKi8KPiAgIAlj
bHJzZXRiaXRzX2xlMzIoJmRlbmFsaV9waHlbOTI0XSwgMHg3IDw8IDE1LCBtb2RlX3NlbCA8PCAx
NSk7Cj4gICAJLyogUEhZXzkyNiBQSFlfUEFEX0RBVEFfRFJJVkUgKi8KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
