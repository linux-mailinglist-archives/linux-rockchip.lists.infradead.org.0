Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D58D1D43B7
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U1k//kw64xS7Istba7nxkZZOK0FgLLHQ57HT1uezzfQ=; b=q2LTPZI/StSyjmcnbqBM/E61W
	E4IzHs4T57DA2m43943cvVlJEVJr7Hyv8aJAzu/iIS4ki0ny8pUcdjnYG8RuVCeVOMb6unpjRy275
	vM417nqISyHpHO5vZH1iI6ZYjsPlGjU3X3DU2V6ucKNvyhdhNF3JyOsEEPBCQ2sP7gkdsdtY+C2yp
	kP6bm7kYnIEei3lkt38sk1VhTj74uYxpE+Sm73Xun8PRdun9jNwfozC2tQD8rFuiSDoR+r5Me+4wQ
	T39lx4/a86atLEIi7ZNvWz8HK5p+bSyLdQWf2raDmd1vQUTYumgc4w65UiRWSm2obYdA/vZtMJQ6f
	YOWeigotw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQPJ-0000SN-Nu; Fri, 15 May 2020 02:49:05 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQPF-0000Ry-H8
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:49:03 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id AB430844;
 Fri, 15 May 2020 10:48:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P27335T140438702880512S1589510924041441_; 
 Fri, 15 May 2020 10:48:55 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <353c0b10f0bda29a66e9f5c119519989>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: chenjh@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 09/16] usb: dwc3: Add disable u2mac linestate check
 quirk
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, marex@denx.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org
References: <20200513071344.5430-1-frank.wang@rock-chips.com>
 <20200513071546.5560-1-frank.wang@rock-chips.com>
 <20200513071546.5560-5-frank.wang@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2d56c3fc-abf3-8c3e-e790-ca8c4f2c7d60@rock-chips.com>
Date: Fri, 15 May 2020 10:48:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200513071546.5560-5-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_194902_011868_6EE10509 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.203 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [211.150.70.203 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jianing.ren@rock-chips.com, linux-rockchip@lists.infradead.org,
 marek.belisko@gmail.com, wmc@rock-chips.com, u-boot@lists.denx.de,
 william.wu@rock-chips.com, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMyDkuIvljYgzOjE1LCBGcmFuayBXYW5nIHdyb3RlOgo+IEZyb206IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+Cj4gVGhpcyBwYXRjaCBhZGRzIGEg
cXVpcmsgdG8gZGlzYWJsZSBVU0IgMi4wIE1BQyBsaW5lc3RhdGUgY2hlY2sKPiBkdXJpbmcgSFMg
dHJhbnNtaXQuIFJlZmVyIHRoZSBkd2MzIGRhdGFib29rLCB3ZSBjYW4gdXNlIGl0IGZvcgo+IHNv
bWUgc3BlY2lhbCBwbGF0Zm9ybXMgaWYgdGhlIGxpbmVzdGF0ZSBub3QgcmVmbGVjdCB0aGUgZXhw
ZWN0ZWQKPiBsaW5lIHN0YXRlKEopIGR1cmluZyB0cmFuc21pc3Npb24uCj4KPiBXaGVuIHVzZSB0
aGlzIHF1aXJrLCB0aGUgY29udHJvbGxlciBpbXBsZW1lbnRzIGEgZml4ZWQgNDAtYml0Cj4gVHhF
bmREZWxheSBhZnRlciB0aGUgcGFja2V0IGlzIGdpdmVuIG9uIFVUTUkgYW5kIGlnbm9yZXMgdGhl
Cj4gbGluZXN0YXRlIGR1cmluZyB0aGUgdHJhbnNtaXQgb2YgYSB0b2tlbiAoZHVyaW5nIHRva2Vu
LXRvLXRva2VuCj4gYW5kIHRva2VuLXRvLWRhdGEgSVBHQVApLgo+Cj4gT24gc29tZSByb2NrY2hp
cCBwbGF0Zm9ybXMgKGUuZy4gcmszMzk5KSwgaXQgcmVxdWlyZXMgdG8gZGlzYWJsZQo+IHRoZSB1
Mm1hYyBsaW5lc3RhdGUgY2hlY2sgdG8gZGVjcmVhc2UgdGhlIFNTUExJVCB0b2tlbiB0byBTRVRV
UAo+IHRva2VuIGludGVyLXBhY2tldCBkZWxheSBmcm9tIDU2Nm5zIHRvIDQ2Nm5zLCBhbmQgZml4
IHRoZSBpc3N1ZQo+IHRoYXQgRlMvTFMgZGV2aWNlcyBub3QgcmVjb2duaXplZCBpZiBpbnNlcnRl
ZCB0aHJvdWdoIFVTQiAzLjAgSFVCLgo+Cj4gUmVmZXJlbmNlIGZyb20gYmVsb3cgTGludXggY29t
bWl0LAo+Cj4gY29tbWl0IDw2NWRiN2EwYzk4MTY+ICgidXNiOiBkd2MzOiBhZGQgZGlzYWJsZSB1
Mm1hYyBsaW5lc3RhdGUKPiBjaGVjayBxdWlyayIpCj4KPiBDYzogTWFyZWsgVmFzdXQgPG1hcmV4
QGRlbnguZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0
aW9ucy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KClRoYW5rcywKLSBLZXZlcgo+IC0tLQo+ICAgZHJpdmVycy91c2IvZHdjMy9jb3JlLmMg
fCAyMCArKysrKysrKysrKysrKysrKysrKwo+ICAgZHJpdmVycy91c2IvZHdjMy9jb3JlLmggfCAg
NyArKysrKysrCj4gICBpbmNsdWRlL2R3YzMtdWJvb3QuaCAgICB8ICAxICsKPiAgIDMgZmlsZXMg
Y2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3
YzMvY29yZS5jIGIvZHJpdmVycy91c2IvZHdjMy9jb3JlLmMKPiBpbmRleCAzY2I2NjUxNWEyLi5k
YzkyZjQ3MWMxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5jCj4gKysrIGIv
ZHJpdmVycy91c2IvZHdjMy9jb3JlLmMKPiBAQCAtNzI1LDYgKzcyNSw3IEBAIGludCBkd2MzX3Vi
b290X2luaXQoc3RydWN0IGR3YzNfZGV2aWNlICpkd2MzX2RldikKPiAgIAlkd2MtPmRpc191M19z
dXNwaHlfcXVpcmsgPSBkd2MzX2Rldi0+ZGlzX3UzX3N1c3BoeV9xdWlyazsKPiAgIAlkd2MtPmRp
c191Ml9zdXNwaHlfcXVpcmsgPSBkd2MzX2Rldi0+ZGlzX3UyX3N1c3BoeV9xdWlyazsKPiAgIAlk
d2MtPmRpc19kZWxfcGh5X3Bvd2VyX2NoZ19xdWlyayA9IGR3YzNfZGV2LT5kaXNfZGVsX3BoeV9w
b3dlcl9jaGdfcXVpcms7Cj4gKwlkd2MtPmRpc190eF9pcGdhcF9saW5lY2hlY2tfcXVpcmsgPSBk
d2MzX2Rldi0+ZGlzX3R4X2lwZ2FwX2xpbmVjaGVja19xdWlyazsKPiAgIAlkd2MtPmRpc19lbmJs
c2xwbV9xdWlyayA9IGR3YzNfZGV2LT5kaXNfZW5ibHNscG1fcXVpcms7Cj4gICAJZHdjLT5kaXNf
dTJfZnJlZWNsa19leGlzdHNfcXVpcmsgPSBkd2MzX2Rldi0+ZGlzX3UyX2ZyZWVjbGtfZXhpc3Rz
X3F1aXJrOwo+ICAgCj4gQEAgLTkzNCw2ICs5MzUsOCBAQCB2b2lkIGR3YzNfb2ZfcGFyc2Uoc3Ry
dWN0IGR3YzMgKmR3YykKPiAgIAkJCQkic25wcyxkaXNfdTJfc3VzcGh5X3F1aXJrIik7Cj4gICAJ
ZHdjLT5kaXNfZGVsX3BoeV9wb3dlcl9jaGdfcXVpcmsgPSBkZXZfcmVhZF9ib29sKGRldiwKPiAg
IAkJCQkic25wcyxkaXMtZGVsLXBoeS1wb3dlci1jaGctcXVpcmsiKTsKPiArCWR3Yy0+ZGlzX3R4
X2lwZ2FwX2xpbmVjaGVja19xdWlyayA9IGRldl9yZWFkX2Jvb2woZGV2LAo+ICsJCQkJInNucHMs
ZGlzLXR4LWlwZ2FwLWxpbmVjaGVjay1xdWlyayIpOwo+ICAgCWR3Yy0+ZGlzX2VuYmxzbHBtX3F1
aXJrID0gZGV2X3JlYWRfYm9vbChkZXYsCj4gICAJCQkJInNucHMsZGlzX2VuYmxzbHBtX3F1aXJr
Iik7Cj4gICAJZHdjLT5kaXNfdTJfZnJlZWNsa19leGlzdHNfcXVpcmsgPSBkZXZfcmVhZF9ib29s
KGRldiwKPiBAQCAtOTU0LDYgKzk1Nyw3IEBAIHZvaWQgZHdjM19vZl9wYXJzZShzdHJ1Y3QgZHdj
MyAqZHdjKQo+ICAgaW50IGR3YzNfaW5pdChzdHJ1Y3QgZHdjMyAqZHdjKQo+ICAgewo+ICAgCWlu
dCByZXQ7Cj4gKwl1MzIgcmVnOwo+ICAgCj4gICAJZHdjM19jYWNoZV9od3BhcmFtcyhkd2MpOwo+
ICAgCj4gQEAgLTk3NSw2ICs5NzksMjIgQEAgaW50IGR3YzNfaW5pdChzdHJ1Y3QgZHdjMyAqZHdj
KQo+ICAgCQlnb3RvIGV2ZW50X2ZhaWw7Cj4gICAJfQo+ICAgCj4gKwlpZiAoZHdjLT5yZXZpc2lv
biA+PSBEV0MzX1JFVklTSU9OXzI1MEEpIHsKPiArCQlyZWcgPSBkd2MzX3JlYWRsKGR3Yy0+cmVn
cywgRFdDM19HVUNUTDEpOwo+ICsKPiArCQkvKgo+ICsJCSAqIEVuYWJsZSBoYXJkd2FyZSBjb250
cm9sIG9mIHNlbmRpbmcgcmVtb3RlIHdha2V1cAo+ICsJCSAqIGluIEhTIHdoZW4gdGhlIGRldmlj
ZSBpcyBpbiB0aGUgTDEgc3RhdGUuCj4gKwkJICovCj4gKwkJaWYgKGR3Yy0+cmV2aXNpb24gPj0g
RFdDM19SRVZJU0lPTl8yOTBBKQo+ICsJCQlyZWcgfD0gRFdDM19HVUNUTDFfREVWX0wxX0VYSVRf
QllfSFc7Cj4gKwo+ICsJCWlmIChkd2MtPmRpc190eF9pcGdhcF9saW5lY2hlY2tfcXVpcmspCj4g
KwkJCXJlZyB8PSBEV0MzX0dVQ1RMMV9UWF9JUEdBUF9MSU5FQ0hFQ0tfRElTOwo+ICsKPiArCQlk
d2MzX3dyaXRlbChkd2MtPnJlZ3MsIERXQzNfR1VDVEwxLCByZWcpOwo+ICsJfQo+ICsKPiAgIAly
ZXQgPSBkd2MzX2NvcmVfaW5pdF9tb2RlKGR3Yyk7Cj4gICAJaWYgKHJldCkKPiAgIAkJZ290byBt
b2RlX2ZhaWw7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5oIGIvZHJpdmVy
cy91c2IvZHdjMy9jb3JlLmgKPiBpbmRleCBjNWU2NTY4ODVhLi5iNTEwZDhhOTgzIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvdXNiL2R3YzMvY29yZS5oCj4gKysrIGIvZHJpdmVycy91c2IvZHdjMy9j
b3JlLmgKPiBAQCAtNzMsNiArNzMsNyBAQAo+ICAgI2RlZmluZSBEV0MzX0dDVEwJCTB4YzExMAo+
ICAgI2RlZmluZSBEV0MzX0dFVlRFTgkJMHhjMTE0Cj4gICAjZGVmaW5lIERXQzNfR1NUUwkJMHhj
MTE4Cj4gKyNkZWZpbmUgRFdDM19HVUNUTDEJCTB4YzExYwo+ICAgI2RlZmluZSBEV0MzX0dTTlBT
SUQJCTB4YzEyMAo+ICAgI2RlZmluZSBEV0MzX0dHUElPCQkweGMxMjQKPiAgICNkZWZpbmUgRFdD
M19HVUlECQkweGMxMjgKPiBAQCAtMTU5LDYgKzE2MCwxMCBAQAo+ICAgI2RlZmluZSBEV0MzX0dD
VExfR0JMSElCRVJOQVRJT05FTgkoMSA8PCAxKQo+ICAgI2RlZmluZSBEV0MzX0dDVExfRFNCTENM
S0dUTkcJCSgxIDw8IDApCj4gICAKPiArLyogR2xvYmFsIFVzZXIgQ29udHJvbCAxIFJlZ2lzdGVy
ICovCj4gKyNkZWZpbmUgRFdDM19HVUNUTDFfVFhfSVBHQVBfTElORUNIRUNLX0RJUwlCSVQoMjgp
Cj4gKyNkZWZpbmUgRFdDM19HVUNUTDFfREVWX0wxX0VYSVRfQllfSFcJQklUKDI0KQo+ICsKPiAg
IC8qIEdsb2JhbCBVU0IyIFBIWSBDb25maWd1cmF0aW9uIFJlZ2lzdGVyICovCj4gICAjZGVmaW5l
IERXQzNfR1VTQjJQSFlDRkdfUEhZU09GVFJTVAkoMSA8PCAzMSkKPiAgICNkZWZpbmUgRFdDM19H
VVNCMlBIWUNGR19VMl9GUkVFQ0xLX0VYSVNUUwkoMSA8PCAzMCkKPiBAQCAtNzcxLDYgKzc3Niw3
IEBAIHN0cnVjdCBkd2MzIHsKPiAgICNkZWZpbmUgRFdDM19SRVZJU0lPTl8yNjBBCTB4NTUzMzI2
MGEKPiAgICNkZWZpbmUgRFdDM19SRVZJU0lPTl8yNzBBCTB4NTUzMzI3MGEKPiAgICNkZWZpbmUg
RFdDM19SRVZJU0lPTl8yODBBCTB4NTUzMzI4MGEKPiArI2RlZmluZSBEV0MzX1JFVklTSU9OXzI5
MEEJMHg1NTMzMjkwYQo+ICAgCj4gICAJZW51bSBkd2MzX2VwMF9uZXh0CWVwMF9uZXh0X2V2ZW50
Owo+ICAgCWVudW0gZHdjM19lcDBfc3RhdGUJZXAwc3RhdGU7Cj4gQEAgLTgyNCw2ICs4MzAsNyBA
QCBzdHJ1Y3QgZHdjMyB7Cj4gICAJdW5zaWduZWQJCWRpc191M19zdXNwaHlfcXVpcms6MTsKPiAg
IAl1bnNpZ25lZAkJZGlzX3UyX3N1c3BoeV9xdWlyazoxOwo+ICAgCXVuc2lnbmVkCQlkaXNfZGVs
X3BoeV9wb3dlcl9jaGdfcXVpcms6MTsKPiArCXVuc2lnbmVkCQlkaXNfdHhfaXBnYXBfbGluZWNo
ZWNrX3F1aXJrOjE7Cj4gICAJdW5zaWduZWQJCWRpc19lbmJsc2xwbV9xdWlyazoxOwo+ICAgCXVu
c2lnbmVkCQlkaXNfdTJfZnJlZWNsa19leGlzdHNfcXVpcms6MTsKPiAgIAo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2R3YzMtdWJvb3QuaCBiL2luY2x1ZGUvZHdjMy11Ym9vdC5oCj4gaW5kZXggMTkz
ZDIyNWQzMS4uZTA4NTMwZWM0ZSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2R3YzMtdWJvb3QuaAo+
ICsrKyBiL2luY2x1ZGUvZHdjMy11Ym9vdC5oCj4gQEAgLTM0LDYgKzM0LDcgQEAgc3RydWN0IGR3
YzNfZGV2aWNlIHsKPiAgIAl1bnNpZ25lZCBkaXNfdTNfc3VzcGh5X3F1aXJrOwo+ICAgCXVuc2ln
bmVkIGRpc191Ml9zdXNwaHlfcXVpcms7Cj4gICAJdW5zaWduZWQgZGlzX2RlbF9waHlfcG93ZXJf
Y2hnX3F1aXJrOwo+ICsJdW5zaWduZWQgZGlzX3R4X2lwZ2FwX2xpbmVjaGVja19xdWlyazsKPiAg
IAl1bnNpZ25lZCBkaXNfZW5ibHNscG1fcXVpcms7Cj4gICAJdW5zaWduZWQgZGlzX3UyX2ZyZWVj
bGtfZXhpc3RzX3F1aXJrOwo+ICAgCXVuc2lnbmVkIHR4X2RlX2VtcGhhc2lzX3F1aXJrOwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
