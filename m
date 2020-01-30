Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB5B14D56C
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Jan 2020 04:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+HLMjPG+zble9FBGsTQ6iBevyfv4ycm9d6ovrBZbM8U=; b=oMDjEj51QAxMASeD2utNg+H4u
	iRLIiGENKyGtx4UdpI2suf8NtmIR5aB63i5dqip3LQKrOnkhfRv4Gfn3nXIUZY+TNd3ol/tEqQBqs
	X4i6GlB3gZCPak8ysoPqP+HO4CTBwb11p/LvKtuB2rMFPAVuGa+nbSxyDxUBhwfB4Xmg0qMQGN4KK
	Ukx4OV5FpC+n1GTyeDxIM2qur4aupikZxsuyzHFSYfw2AnRnhJL0uHkfmbn8U51GIqfD20VxH/h49
	N4B2nA3hYBOj0/7Ca9DqAdeF8ZIV0LWD2Efop7C6RUz10BATFlLCzY+bkDpohntHTxYHJJhUE6tZB
	ccD5soJKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix0vq-0004Yz-Eq; Thu, 30 Jan 2020 03:55:54 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix0vm-0004YT-7V
 for linux-rockchip@lists.infradead.org; Thu, 30 Jan 2020 03:55:52 +0000
Received: from localhost (unknown [192.168.167.209])
 by regular1.263xmail.com (Postfix) with ESMTP id AA9AE25E;
 Thu, 30 Jan 2020 11:55:46 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.110])
 by smtp.263.net (postfix) whith ESMTP id
 P28746T140370929248000S1580356545739845_; 
 Thu, 30 Jan 2020 11:55:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ef7dfeff84fd06a0834aa7f323f3c568>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.232.110
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 2/4] ARM: dts: rockchip: Sync rk3288-vyasa dts from linux
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
 <20200123141222.486-2-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <8fed9f41-472e-5ed7-fc1f-66d3b9469c6f@rock-chips.com>
Date: Thu, 30 Jan 2020 11:55:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200123141222.486-2-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_195550_702333_D453EEFC 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvMS8yMyDkuIvljYgxMDoxMiwgSmFnYW4gVGVraSB3cm90ZToKPiBTeW5jIHJrMzI4
OC12eWFzYSBkdHMgZmlsZSBmcm9tIExpbnV4Lgo+Cj4gVGhpcyBzeW5jIGhhcyBjaGFuZ2VzIHJl
cXVpcmVkIHRvIHdvcmsgSERNSSBvdXRwdXQgb24KPiBWeWFzYSBSSzMyODggYm9hcmQuCj4KPiBU
aGlzIHN5bmMgZXhjbHVkZXMgdGhlIGlvX2RvbWFpbnMgbm9kZSBzaW5jZSBpdCBpcyBub3QKPiBh
dmFpbGFibGUgaW4gcmszMjg4LmR0c2kuCj4KPiBDaGFuZ2VzIGxpa2UgdmNjNTBfaGRtaSwgdmRk
MTBfbGNkIGFuZCBkZGMtaTJjLWJ1cyBhcmUKPiBub3QgbWVyZ2VkIHRvIExpbnV4IHlldCBidXQg
d2lsIHJlc3luYyBsYXRlciBpZiBhbnkKPiBmdXJ0aGVyIHVwZGF0ZXMgb24gdGhpcy4KPgo+IFNp
Z25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKClJl
dmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtz
LAotIEtldmVyCgo+IC0tLQo+ICAgYXJjaC9hcm0vZHRzL3JrMzI4OC12eWFzYS5kdHMgfCA3OSAr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMy
IGluc2VydGlvbnMoKyksIDQ3IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2R0cy9yazMyODgtdnlhc2EuZHRzIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC12eWFzYS5kdHMKPiBp
bmRleCA4NTBhYTI1ODE4Li40MTkzZjcyMDhjIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2R0cy9y
azMyODgtdnlhc2EuZHRzCj4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC12eWFzYS5kdHMKPiBA
QCAtMSw0MyArMSw2IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsg
T1IgTUlUKQo+ICAgLyoKPiAgICAqIENvcHlyaWdodCAoQykgMjAxNyBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAtICoKPiAtICogVGhpcyBmaWxlIGlzIGR1YWwtbGlj
ZW5zZWQ6IHlvdSBjYW4gdXNlIGl0IGVpdGhlciB1bmRlciB0aGUgdGVybXMKPiAtICogb2YgdGhl
IEdQTCBvciB0aGUgWDExIGxpY2Vuc2UsIGF0IHlvdXIgb3B0aW9uLiBOb3RlIHRoYXQgdGhpcyBk
dWFsCj4gLSAqIGxpY2Vuc2luZyBvbmx5IGFwcGxpZXMgdG8gdGhpcyBmaWxlLCBhbmQgbm90IHRo
aXMgcHJvamVjdCBhcyBhCj4gLSAqIHdob2xlLgo+IC0gKgo+IC0gKiAgYSkgVGhpcyBmaWxlIGlz
IGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRlIGl0IGFuZC9vcgo+IC0gKiAgICAg
bW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGljIExpY2Vu
c2UgYXMKPiAtICogICAgIHB1Ymxpc2hlZCBieSB0aGUgRnJlZSBTb2Z0d2FyZSBGb3VuZGF0aW9u
OyBlaXRoZXIgdmVyc2lvbiAyIG9mIHRoZQo+IC0gKiAgICAgTGljZW5zZSwgb3IgKGF0IHlvdXIg
b3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KPiAtICoKPiAtICogICAgIFRoaXMgZmlsZSBpcyBk
aXN0cmlidXRlZCBpbiB0aGUgaG9wZSB0aGF0IGl0IHdpbGwgYmUgdXNlZnVsLAo+IC0gKiAgICAg
YnV0IFdJVEhPVVQgQU5ZIFdBUlJBTlRZOyB3aXRob3V0IGV2ZW4gdGhlIGltcGxpZWQgd2FycmFu
dHkgb2YKPiAtICogICAgIE1FUkNIQU5UQUJJTElUWSBvciBGSVRORVNTIEZPUiBBIFBBUlRJQ1VM
QVIgUFVSUE9TRS4gIFNlZSB0aGUKPiAtICogICAgIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNl
IGZvciBtb3JlIGRldGFpbHMuCj4gLSAqCj4gLSAqIE9yLCBhbHRlcm5hdGl2ZWx5LAo+IC0gKgo+
IC0gKiAgYikgUGVybWlzc2lvbiBpcyBoZXJlYnkgZ3JhbnRlZCwgZnJlZSBvZiBjaGFyZ2UsIHRv
IGFueSBwZXJzb24KPiAtICogICAgIG9idGFpbmluZyBhIGNvcHkgb2YgdGhpcyBzb2Z0d2FyZSBh
bmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uCj4gLSAqICAgICBmaWxlcyAodGhlICJTb2Z0d2Fy
ZSIpLCB0byBkZWFsIGluIHRoZSBTb2Z0d2FyZSB3aXRob3V0Cj4gLSAqICAgICByZXN0cmljdGlv
biwgaW5jbHVkaW5nIHdpdGhvdXQgbGltaXRhdGlvbiB0aGUgcmlnaHRzIHRvIHVzZSwKPiAtICog
ICAgIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vuc2Us
IGFuZC9vcgo+IC0gKiAgICAgc2VsbCBjb3BpZXMgb2YgdGhlIFNvZnR3YXJlLCBhbmQgdG8gcGVy
bWl0IHBlcnNvbnMgdG8gd2hvbSB0aGUKPiAtICogICAgIFNvZnR3YXJlIGlzIGZ1cm5pc2hlZCB0
byBkbyBzbywgc3ViamVjdCB0byB0aGUgZm9sbG93aW5nCj4gLSAqICAgICBjb25kaXRpb25zOgo+
IC0gKgo+IC0gKiAgICAgVGhlIGFib3ZlIGNvcHlyaWdodCBub3RpY2UgYW5kIHRoaXMgcGVybWlz
c2lvbiBub3RpY2Ugc2hhbGwgYmUKPiAtICogICAgIGluY2x1ZGVkIGluIGFsbCBjb3BpZXMgb3Ig
c3Vic3RhbnRpYWwgcG9ydGlvbnMgb2YgdGhlIFNvZnR3YXJlLgo+IC0gKgo+IC0gKiAgICAgVEhF
IFNPRlRXQVJFIElTIFBST1ZJREVEICJBUyBJUyIsIFdJVEhPVVQgV0FSUkFOVFkgT0YgQU5ZIEtJ
TkQsCj4gLSAqICAgICBFWFBSRVNTIE9SIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlU
RUQgVE8gVEhFIFdBUlJBTlRJRVMKPiAtICogICAgIE9GIE1FUkNIQU5UQUJJTElUWSwgRklUTkVT
UyBGT1IgQSBQQVJUSUNVTEFSIFBVUlBPU0UgQU5ECj4gLSAqICAgICBOT05JTkZSSU5HRU1FTlQu
IElOIE5PIEVWRU5UIFNIQUxMIFRIRSBBVVRIT1JTIE9SIENPUFlSSUdIVAo+IC0gKiAgICAgSE9M
REVSUyBCRSBMSUFCTEUgRk9SIEFOWSBDTEFJTSwgREFNQUdFUyBPUiBPVEhFUiBMSUFCSUxJVFks
Cj4gLSAqICAgICBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhF
UldJU0UsIEFSSVNJTkcKPiAtICogICAgIEZST00sIE9VVCBPRiBPUiBJTiBDT05ORUNUSU9OIFdJ
VEggVEhFIFNPRlRXQVJFIE9SIFRIRSBVU0UgT1IKPiAtICogICAgIE9USEVSIERFQUxJTkdTIElO
IFRIRSBTT0ZUV0FSRS4KPiAgICAqLwo+ICAgCj4gICAvZHRzLXYxLzsKPiBAQCAtMTE1LDYgKzc4
LDE3IEBACj4gICAJCXZpbi1zdXBwbHkgPSA8JnZjY19pbz47Cj4gICAJfTsKPiAgIAo+ICsJdmNj
NTBfaGRtaTogdmNjNTAtaGRtaSB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQi
Owo+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZjYzUwX2hkbWkiOwo+ICsJCWVuYWJsZS1hY3RpdmUt
aGlnaDsKPiArCQlncGlvID0gPCZncGlvNyBSS19QQjQgR1BJT19BQ1RJVkVfSElHSD47IC8qIEhE
TUlfRU4gKi8KPiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICsJCXBpbmN0cmwtMCA9
IDwmdmNjNTBfaGRtaV9lbj47Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0
b3ItYm9vdC1vbjsKPiArCQl2aW4tc3VwcGx5ID0gPCZ2c3VzXzV2PjsKPiArCX07Cj4gICAJdnVz
YjFfNXY6IHZ1c2IxLTV2IHsKPiAgIAkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+
ICAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2dXNiMV81diI7Cj4gQEAgLTE1OCw3ICsxMzIsNiBAQAo+
ICAgJmVtbWMgewo+ICAgCWJ1cy13aWR0aCA9IDw4PjsKPiAgIAljYXAtbW1jLWhpZ2hzcGVlZDsK
PiAtCWRpc2FibGUtd3A7Cj4gICAJbm9uLXJlbW92YWJsZTsKPiAgIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ICAgCXBpbmN0cmwtMCA9IDwmZW1tY19jbGsgJmVtbWNfY21kICZlbW1jX3B3
ciAmZW1tY19idXM4PjsKPiBAQCAtMTg4LDcgKzE2MSw3IEBACj4gICB9Owo+ICAgCj4gICAmaGRt
aSB7Cj4gLQlkZGMtaTJjLWJ1cyA9IDwmaTJjMj47Cj4gKwlkZGMtaTJjLWJ1cyA9IDwmaTJjNT47
Cj4gICAJc3RhdHVzID0gIm9rYXkiOwo+ICAgfTsKPiAgIAo+IEBAIC0zMjQsMTUgKzI5NywxNSBA
QAo+ICAgCQkJCX07Cj4gICAJCQl9Owo+ICAgCj4gLQkJCXZjYzEwX2xjZDogTERPX1JFRzYgewo+
IC0JCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjMTBfbGNkIjsKPiArCQkJdmRkMTBfbGNkOiBMRE9f
UkVHNiB7Cj4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGQxMF9sY2QiOwo+ICAgCQkJCXJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDEwMDAwMDA+Owo+ICAgCQkJCXJlZ3VsYXRvci1tYXgtbWlj
cm92b2x0ID0gPDEwMDAwMDA+Owo+ICAgCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gICAJCQkJ
cmVndWxhdG9yLWJvb3Qtb247Cj4gICAJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gICAJCQkJ
CXJlZ3VsYXRvci1vbi1pbi1zdXNwZW5kOwo+IC0JCQkJCXJlZ3VsYXRvci1zdXNwZW5kLW1pY3Jv
dm9sdCA9IDwxODAwMDAwPjsKPiArCQkJCQlyZWd1bGF0b3Itc3VzcGVuZC1taWNyb3ZvbHQgPSA8
MTAwMDAwMD47Cj4gICAJCQkJfTsKPiAgIAkJCX07Cj4gICAKPiBAQCAtMzg1LDcgKzM1OCw3IEBA
Cj4gICAJfTsKPiAgIH07Cj4gICAKPiAtJmkyYzIgewo+ICsmaTJjNSB7Cj4gICAJc3RhdHVzID0g
Im9rYXkiOwo+ICAgfTsKPiAgIAo+IEBAIC00MDIsNiArMzc1LDEyIEBACj4gICAJc3RhdHVzID0g
Im9rYXkiOwo+ICAgfTsKPiAgIAo+ICsmdHNhZGMgewo+ICsJcm9ja2NoaXAsaHctdHNodXQtbW9k
ZSA9IDwxPjsgLyogdHNodXQgbW9kZSAwOkNSVSAxOkdQSU8gKi8KPiArCXJvY2tjaGlwLGh3LXRz
aHV0LXBvbGFyaXR5ID0gPDE+OyAvKiB0c2h1dCBwb2xhcml0eSAwOkxPVyAxOkhJR0ggKi8KPiAr
CXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gICAmdWFydDIgewo+ICAgCXN0YXR1cyA9ICJv
a2F5IjsKPiAgIH07Cj4gQEAgLTQ2MywxNSArNDQyLDIxIEBACj4gICAJCX07Cj4gICAJfTsKPiAg
IAo+ICsJaGRtaSB7Cj4gKwkJdmNjNTBfaGRtaV9lbjogdmNjNTAtaGRtaS1lbiB7Cj4gKwkJCXJv
Y2tjaGlwLHBpbnMgPSA8NyBSS19QQjQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4g
KwkJfTsKPiArCX07Cj4gKwo+ICAgCXBtaWMgewo+ICAgCQlwbWljX2ludDogcG1pYy1pbnQgewo+
IC0JCQlyb2NrY2hpcCxwaW5zID0gPFJLX0dQSU8wIDQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxf
dXA+Owo+ICsJCQlyb2NrY2hpcCxwaW5zID0gPDAgUktfUEE0IFJLX0ZVTkNfR1BJTyAmcGNmZ19w
dWxsX3VwPjsKPiAgIAkJfTsKPiAgIAl9Owo+ICAgCj4gICAJdXNiX2hvc3Qgewo+ICAgCQlwaHlf
cHdyX2VuOiBwaHktcHdyLWVuIHsKPiAtCQkJcm9ja2NoaXAscGlucyA9IDxSS19HUElPMiBSS19Q
QjEgUktfRlVOQ19HUElPICZwY2ZnX291dHB1dF9oaWdoPjsKPiArCQkJcm9ja2NoaXAscGlucyA9
IDwyIFJLX1BCMSBSS19GVU5DX0dQSU8gJnBjZmdfb3V0cHV0X2hpZ2g+Owo+ICAgCQl9Owo+ICAg
Cj4gICAJCXVzYjJfcHdyX2VuOiB1c2IyLXB3ci1lbiB7Cj4gQEAgLTQ4MSw3ICs0NjYsNyBAQAo+
ICAgCj4gICAJdXNiX290ZyB7Cj4gICAJCW90Z192YnVzX2Rydjogb3RnLXZidXMtZHJ2IHsKPiAt
CQkJcm9ja2NoaXAscGlucyA9IDxSS19HUElPMCBSS19QQjQgUktfRlVOQ19HUElPICZwY2ZnX3B1
bGxfbm9uZT47Cj4gKwkJCXJvY2tjaGlwLHBpbnMgPSA8MCBSS19QQjQgUktfRlVOQ19HUElPICZw
Y2ZnX3B1bGxfbm9uZT47Cj4gICAKPiAgIAkJfTsKPiAgIAl9OwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
