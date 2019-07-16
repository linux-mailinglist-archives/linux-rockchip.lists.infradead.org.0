Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA996A2FE
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vTQSpRqB83kY0f3FhuT+nF0GP8B9h9RO3YbnN2dcgv4=; b=fAMMd0Gf3z4kSfxJ5Nc9EHVrw
	AaB4mj+AiwGZRdMVRvaM1kRaijVBelu1CwEVKpqzQKAf4Bop/ArX5B4j8h0NNHjAMG/SDZGw2/Xh5
	XfLqCqH5y35tQt4nPnz4hcDEXjNLQ4dnBnfqtJNXnu1nB6XuQN3VSFGXs85GIvOWJNBbjPN3vpuvx
	U+HaS2dWE8EuK9P7HmQQEuVo0GAWZx2M0voqKG3UoiJI40IjVDELN9DhyY6gmrWcp6oZm5NWvRlkH
	n9ZCkpKyJ0nu5nkeZxUtXA3dUfvz/pYL46hS0HKV5j8jm6IVpHkiRZ7bkexTgSAkCdSpax+qa8g00
	omllkh/Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHyr-0003Sl-4r; Tue, 16 Jul 2019 07:34:33 +0000
Received: from regular1.263xmail.com ([211.150.70.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHyn-0003SG-O1
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:34:31 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 27D3686D;
 Tue, 16 Jul 2019 15:34:28 +0800 (CST)
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
 P21246T140496716908288S1563262465892517_; 
 Tue, 16 Jul 2019 15:34:26 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9a3eb71b8feec3dbdf4523de78fd88ee>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 13/15] arm: include: rockchip: Move dramtypes to common
 header
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182110.21336-1-jagan@amarulasolutions.com>
 <20190715182110.21336-14-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0ae2ebc3-9942-4b81-0760-427977fca1aa@rock-chips.com>
Date: Tue, 16 Jul 2019 15:34:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182110.21336-14-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_003430_093413_5C455D32 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.196 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjIxLCBKYWdhbiBUZWtpIHdyb3RlOgo+IGRyYW10eXBlIGVu
dW0gbnVtYmVycyBhcyBjb21tb24gYWNyb3NzIGFsbCBkcmFtIGNvbnRyb2xsZXJzCj4gaW4gcm9j
a2NoaXAsIHNvIG1vdmUgdGhlIGVuZXVtIHZhbHVlcyBpbiBjb21tb24gaGVhZGVyLgo+Cj4gU2ln
bmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpSZXZp
ZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywK
IMKgLSBLZXZlcgo+IC0tLQo+ICAgYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9z
ZHJhbS5oICAgICAgICB8IDYgLS0tLS0tCj4gICBhcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJv
Y2tjaGlwL3NkcmFtX2NvbW1vbi5oIHwgOCArKysrKysrKwo+ICAgYXJjaC9hcm0vaW5jbHVkZS9h
c20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMyMnguaCB8IDcgLS0tLS0tLQo+ICAgYXJjaC9hcm0v
aW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMzOTkuaCB8IDggLS0tLS0tLS0KPiAg
IDQgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtLmggYi9h
cmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtLmgKPiBpbmRleCBiYmU0MjVk
ZWI5Li45MjIwNzYzZmE3IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gt
cm9ja2NoaXAvc2RyYW0uaAo+ICsrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2No
aXAvc2RyYW0uaAo+IEBAIC04LDEyICs4LDYgQEAKPiAgICNpZm5kZWYgX0FTTV9BUkNIX1JLMzI4
OF9TRFJBTV9IX18KPiAgICNkZWZpbmUgX0FTTV9BUkNIX1JLMzI4OF9TRFJBTV9IX18KPiAgIAo+
IC1lbnVtIHsKPiAtCUREUjMgPSAzLAo+IC0JTFBERFIzID0gNiwKPiAtCVVOVVNFRCA9IDB4RkYs
Cj4gLX07Cj4gLQo+ICAgc3RydWN0IHJrMzI4OF9zZHJhbV9jaGFubmVsIHsKPiAgIAkvKgo+ICAg
CSAqIGJpdCB3aWR0aCBpbiBhZGRyZXNzLCBlZzoKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vaW5j
bHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCBiL2FyY2gvYXJtL2luY2x1ZGUv
YXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBpbmRleCA4MmNlM2QzZmM5Li41NWFi
Y2RhZTc3IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAv
c2RyYW1fY29tbW9uLmgKPiArKysgYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlw
L3NkcmFtX2NvbW1vbi5oCj4gQEAgLTYsNiArNiwxNCBAQAo+ICAgI2lmbmRlZiBfQVNNX0FSQ0hf
U0RSQU1fQ09NTU9OX0gKPiAgICNkZWZpbmUgX0FTTV9BUkNIX1NEUkFNX0NPTU1PTl9ICj4gICAK
PiArZW51bSB7Cj4gKwlERFIzID0gMHgzLAo+ICsJTFBERFIyID0gMHg1LAo+ICsJTFBERFIzID0g
MHg2LAo+ICsJTFBERFI0ID0gMHg3LAo+ICsJVU5VU0VEID0gMHhGRgo+ICt9Owo+ICsKPiAgIHN0
cnVjdCBzZHJhbV9jYXBfaW5mbyB7Cj4gICAJdW5zaWduZWQgaW50IHJhbms7Cj4gICAJLyogZHJh
bSBjb2x1bW4gbnVtYmVyLCAwIG1lYW5zIHRoaXMgY2hhbm5lbCBpcyBpbnZhbGlkICovCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMjJ4
LmggYi9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX3JrMzIyeC5oCj4g
aW5kZXggZDAwOTFhN2FhZi4uMzM2YzVkN2U4YyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNs
dWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX3JrMzIyeC5oCj4gKysrIGIvYXJjaC9hcm0vaW5j
bHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9yazMyMnguaAo+IEBAIC03LDEzICs3LDYgQEAK
PiAgIAo+ICAgI2luY2x1ZGUgPGNvbW1vbi5oPgo+ICAgCj4gLWVudW0gewo+IC0JRERSMwkJPSAz
LAo+IC0JTFBERFIyCQk9IDUsCj4gLQlMUEREUjMJCT0gNiwKPiAtCVVOVVNFRAkJPSAweEZGLAo+
IC19Owo+IC0KPiAgIHN0cnVjdCByazMyMnhfc2RyYW1fY2hhbm5lbCB7Cj4gICAJLyoKPiAgIAkg
KiBiaXQgd2lkdGggaW4gYWRkcmVzcywgZWc6Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2luY2x1
ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fcmszMzk5LmggYi9hcmNoL2FybS9pbmNsdWRlL2Fz
bS9hcmNoLXJvY2tjaGlwL3NkcmFtX3JrMzM5OS5oCj4gaW5kZXggNjVjOTJjZjc0NC4uNDcxNzAy
ZjkzNSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3Nk
cmFtX3JrMzM5OS5oCj4gKysrIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9z
ZHJhbV9yazMzOTkuaAo+IEBAIC02LDE0ICs2LDYgQEAKPiAgICNpZm5kZWYgX0FTTV9BUkNIX1NE
UkFNX1JLMzM5OV9ICj4gICAjZGVmaW5lIF9BU01fQVJDSF9TRFJBTV9SSzMzOTlfSAo+ICAgCj4g
LWVudW0gewo+IC0JRERSMyA9IDB4MywKPiAtCUxQRERSMiA9IDB4NSwKPiAtCUxQRERSMyA9IDB4
NiwKPiAtCUxQRERSNCA9IDB4NywKPiAtCVVOVVNFRCA9IDB4RkYKPiAtfTsKPiAtCj4gICBzdHJ1
Y3QgcmszMzk5X2Rkcl9wY3RsX3JlZ3Mgewo+ICAgCXUzMiBkZW5hbGlfY3RsWzMzMl07Cj4gICB9
OwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
