Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC23159B36
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Feb 2020 22:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTpn6FjniWgd8lWUS9ojwZryzYEH2TSaPu+rJ4Svo9Y=; b=CNyn3jUSajNcDu
	MEGf5w5CibwINRuA3l8ErZWNKWzeHXOI2XBHdNrWW7ucBtPfn9l6RckSybPL4yER47QwgXQ2iL2pE
	z8yMYhe7KD5fj18mSbLLCyyzCe+azwlACXcRW8GcUNsuzFZKL3Wdm5wLpf0wXDjPyfH+gAHy6OJD4
	pLABuaWsJKrsWhUDXEKMcsrZ5wp9pa1Y4AMwTI9ce6zxSwAMbAflrPnNTNkDK7zigbEFHt+ONI5uU
	cJ+ji7xbh1lSUaPSbH2zdTS7QQsNco09TsbTZGTh+dRkqIgmOq5BfU/K1hI/XYTEEoCOZ1n2v7J04
	0JTKQ+NB/onLjT3Zssxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1d8u-0004pm-Ft; Tue, 11 Feb 2020 21:32:28 +0000
Received: from mail2.vany.ca ([142.54.190.254])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1d8j-0004hU-Ec; Tue, 11 Feb 2020 21:32:19 +0000
Received: from [192.168.1.160] (unknown [192.159.180.39])
 by mail2.vany.ca (Postfix) with ESMTPSA id 1673DAC0136;
 Tue, 11 Feb 2020 15:32:08 -0600 (CST)
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
To: Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
 <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
 <88ee95cc-4160-a1b2-ae38-6a1146cc2dde@vany.ca>
 <fc529695-ccd7-f1b5-ebf5-8241fec3a24a@arm.com>
From: Adam Van Ymeren <adam@vany.ca>
Message-ID: <5111ebb1-fd44-354a-0a55-5f27f9523c9e@vany.ca>
Date: Tue, 11 Feb 2020 16:32:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Icedove/68.4.1
MIME-Version: 1.0
In-Reply-To: <fc529695-ccd7-f1b5-ebf5-8241fec3a24a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_133217_562883_F9B4082D 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAtMDItMTAgODozNyBhLm0uLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMDkvMDIv
MjAyMCAxOjA3IGFtLCBBZGFtIFZhbiBZbWVyZW4gd3JvdGU6Cj4+IEdvdCBpdCB3b3JraW5nLiBS
b2JpbiB5b3Ugd2VyZSByaWdodCwgaXQganVzdCBuZWVkZWQgZW5hYmxlLWFjdGl2ZS1oaWdoOwo+
PiBhZGRlZCB0byB0aGUgcmVndWxhdG9yLCB1cGRhdGVkIHBhdGNoIGF0IHRoZSBlbmQgb2YgdGhp
cyBtZXNzYWdlLgo+Cj4gV2VpcmQuLi4gYWZ0ZXIgbXkgaW5pdGlhbCBleGNpdGVtZW50IEkgd2Vu
dCBiYWNrIGFuZCBsb29rZWQgbW9yZQo+IGNsb3NlbHkgYXQgdGhlIGJpbmRpbmcgYW5kIGdwaW9s
aWItb2YgY29kZSwgb25seSB0byByZWFsaXNlIHRoYXQgdGhhdAo+IHByb3BlcnR5IGlzIG9ubHkg
c3VwcG9zZWQgdG8gYXBwbHkgdG8gc3BlY2lmaWMgJ2VuYWJsZScgR1BJT3MgKG9mCj4gd2hpY2gg
dGhlcmUgYXJlIG5vbmUgaGVyZSBzaW5jZSBpdCdzIGFsd2F5cy1vbiksIGFuZCB0aGF0IHRoZSAn
c3RhdGUnCj4gR1BJT3Mgd2VyZSBhIHNlcGFyYXRlIHRoaW5nIGFuZCBJJ2QganVtcGVkIHRvIHRo
ZSB3cm9uZyBjb25jbHVzaW9uLiBTbwo+IG5vdyBJJ20gZG91Ymx5IHN1cnByaXNlZCB0aGF0IGl0
IGFjdHVhbGx5IG1ha2VzIGEgZGlmZmVyZW5jZSA6LwoKWWVhaCB5b3UncmUgcmlnaHQsIGl0IGRv
ZXNuJ3QgbWFrZSBhIGRpZmZlcmVuY2UsIGl0IHdhcyBqdXN0CmNvaW5jaWRlbmNlLsKgIEl0IGp1
c3Qgc2VlbXMgdG8gYmUgcmVhbGx5IGZsYWt5LCBpdCdzIGJvb3RpbmcKc3VjY2Vzc2Z1bGx5IGFi
b3V0IDIwLTMwJSBvZiB0aGUgdGltZSwgSSBrZXB0IGRyYXdpbmcgY29uY2x1c2lvbnMgYmFzZWQK
b24gb25lIG9yIHR3byBzdWNjZXNzZnVsIGJvb3RzLCBidXQgZnJvbSBub3cgb24gSSdsbCB0cnkg
MTAgYm9vdHMKYmVmb3JlwqAgV2l0aCBubyBjaGFuZ2VzIGFuZCBqdXN0IHVucGx1Z2dpbmcvcmVw
bHVnZ2luZyB0aGUgYm9hcmQsIHRoZQprZXJuZWwgb25seSBmaW5kcyBtbWNibGsxIDIwLTMwJSBv
ZiB0aGUgdGltZS7CoCBXaGF0J3Mgd2VpcmQgdGhvdWdoIGlzCnRoYXQgdGhlIGZpcnN0IHN0YWdl
IGlkYmxvYWRlciBhbmQgdS1ib290IHNvIGZhciBoYXZlIHdvcmtlZCAxMDAlIG9mIHRoZQp0aW1l
IG9uIHRoZSBzYW1lIHNkY2FyZC4KCgpBcyBJIHNhaWQgZWFybHkgaW4gdGhlIHRocmVhZCwgaWYg
SSByZW1vdmUgdmNjX3NkaW8vdnFtbWMgZnJvbSB0aGUKZGV2aWNlIHRyZWUsIHRoZW4gdGhlIGtl
cm5lbCBmaW5kcyBtbWNibGsxIGV2ZXJ5IHRpbWUgSSd2ZSBhdHRlbXB0ZWQgaXQKc28gZmFyLCBh
bHRob3VnaCBJIGhhdmVuJ3QgZG9uZSBleHRlbnNpdmUgdGVzdHMgdG8gc2VlIGlmIGkvbyBpcwpz
dGFibGUuwqAgU28gdGhlcmUgc2VlbXMgdG8gYmUgX3NvbWV0aGluZ18gYWJvdXQgaG93IHRoZSBr
ZXJuZWwgaXMKaW50ZXJhY3Rpbmcgd2l0aCB0aGUgcmVndWxhdG9yIGFuZC9vciB0aGUgbW1jIGhv
c3QsIG90aGVyd2lzZSBJIHNlZSBubwpleHBsYW5hdGlvbiBmb3Igd2h5IHRoZSBrZXJuZWwgd291
bGQgZmFpbCB3aGVyZSB1LWJvb3QgaGFkIHN1Y2NlZWRlZC4KCgpJIGxvZ2dlZCB3cml0ZXMgdG8g
cmVnaXN0ZXIgMHg0MjgsIGFuZCB2b2x0YWdlIGNoYW5nZXMgaW4KZ3Bpby1yZWd1bGF0b3IsIHdp
dGggdGhlIGRlZmF1bHQgZGV2aWNlIHRyZWUgd2hlbiBhc2tpbmcgZm9yIDMuM1YgaXQKc2V0cyAw
eDQyOCB0byAweDIwMDAwLCB3aGljaCBpcyBhcyBleHBlY3RlZCwgSSB2ZXJpZmllZCB0aGUgb3V0
cHV0IG9mCnRoZSB2b2x0YWdlIHJlZ3VsYXRvciB3aXRoIGEgbXVsdGltZXRlciBhbmQgaXQgZG9l
cyBhcHBlYXIgdG8gYmUgMy4zVi7CoApJIG5vdGljZSBob3dldmVyIHRoYXQgZWFybHkgaW4gdGhl
IGdwaW8gc2V0dXAgaXQgZmlyc3Qgd3JpdGVzIDB4MjAwMDIgdG8KMHg0MjggYmVmb3JlIGxhdGVy
IHdyaXRpbmcgMHgyMDAwMCB3aGF0IGluaXRpYWxpemluZyB0aGUgbW1jIGRyaXZlcgoKClvCoMKg
wqAgMC41NDUwMDddIEFEQU1WWSByZWdtYXAgNDI4IDw9IDIwMDAyClvCoMKgwqAgMC41NDkzNDhd
IGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBJRE1BQyBzdXBwb3J0cyAzMi1iaXQKYWRk
cmVzcyBtb2RlLgpbwqDCoMKgIDAuNTUwMDEyXSBkd21tY19yb2NrY2hpcCBmZjUwMDAwMC5kd21t
YzogVXNpbmcgaW50ZXJuYWwgRE1BIGNvbnRyb2xsZXIuClvCoMKgwqAgMC41NTA2MTVdIGR3bW1j
X3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBWZXJzaW9uIElEIGlzIDI3MGEKW8KgwqDCoCAwLjU1
MTE1NF0gZHdtbWNfcm9ja2NoaXAgZmY1MDAwMDAuZHdtbWM6IERXIE1NQyBjb250cm9sbGVyIGF0
IGlycQoyOSwzMiBiaXQgaG9zdCBkYXRhIHdpZHRoLDI1NiBkZWVwIGZpZm8KW8KgwqDCoCAwLjU1
MjUyN10gQURBTVZZOiBncGlvX3JlZ3VsYXRvcl9zZXRfdm9sdGFnZSB2Y2Nfc2RpbzogdXY6IDMz
MDAwMDAKc3RhdGU6IDAKW8KgwqDCoCAwLjU1MzE1OF0gQURBTVZZIHJlZ21hcCA0MjggPD0gMjAw
MDAKW8KgwqDCoCAwLjU2NjEzM10gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0g
NDAwMDAwSHogKHNsb3QgcmVxCjQwMDAwMEh6LCBhY3R1YWwgNDAwMDAwSFogZGl2ID0gMCkKCgpN
eSBiZXN0IGd1ZXNzIGlzIHRoZXJlJ3Mgc29tZSBzb3J0IG9mIHJhY2UgY29uZGl0aW9uP8KgIE1h
eWJlIGEgY2FwYWNpdG9yCmlzIHN0aWxsIGNoYXJnaW5nIGFuZCBob2xkaW5nIHRoZSB2b2x0YWdl
IGxvdyBqdXN0IGxvbmcgZW5vdWdoIHRoYXQgdGhlCmtlcm5lbCBnaXZlcyB1cD/CoCBPciBtYXli
ZSB0aGUga2VybmVsIGlzIGp1c3Qgbm90IHdhaXRpbmcgbG9uZyBlbm91Z2gKZm9yIHRoZSBtbWMg
aG9zdCB0byBmaW5pc2ggaW5pdGlhbGl6aW5nLsKgIEluIGFib3V0IDUwJSBvZiBteSBmYWlsZWQK
Ym9vdHMgSSBzZWUgdGhpcyBkZWJ1ZyBtZXNzYWdlcyBhYm91dCBtbWMxIG1peGVkIGludG8gdGhl
IGtlcm5lbCBwYW5pYwpsaWtlIHNvLgoKW8KgwqDCoCAwLjY2MjQyOF0gVkZTOiBDYW5ub3Qgb3Bl
biByb290IGRldmljZSAibW1jYmxrMXA1IiBvcgp1bmtub3duLWJsb2NrKDAsMCk6IGVycm9yIC02
ClvCoMKgwqAgMC42NjMxMDddIFBsZWFzZSBhcHBlbmQgYSBjb3JyZWN0ICJyb290PSIgYm9vdCBv
cHRpb247IGhlcmUgYXJlIHRoZQphdmFpbGFibGUgcGFydGl0aW9uczoKW8KgwqDCoCAwLjY2Mzg0
N10gS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IFZGUzogVW5hYmxlIHRvIG1vdW50IHJvb3Qg
ZnMKb24gdW5rbm93bi1ibG9jaygwLDApClvCoMKgwqAgMC42NjM4NzJdIG1tYzE6IHN0YXJ0aW5n
IENNRDYgYXJnIDAwZmZmZmYwIGZsYWdzIDAwMDAwMGI1ClvCoMKgwqAgMC42NjQ1NzhdIENQVTog
MiBQSUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIDUuNS4wICMzNwpbwqDCoMKgIDAu
NjY1MDYxXSBtbWMxOsKgwqDCoMKgIGJsa3N6IDY0IGJsb2NrcyAxIGZsYWdzIDAwMDAwMjAwIHRz
YWMgMTAwIG1zIG5zYWMgMApbwqDCoMKgIDAuNjY1NTcyXSBIYXJkd2FyZSBuYW1lOiBGaXJlZmx5
IHJvYy1yazMzMjgtY2MgKERUKQpbwqDCoMKgIDAuNjY2NjAwXSBDYWxsIHRyYWNlOgpbwqDCoMKg
IDAuNjY2ODMyXcKgIGR1bXBfYmFja3RyYWNlKzB4MC8weDFiNApbwqDCoMKgIDAuNjY3MTYxXcKg
IHNob3dfc3RhY2srMHgxNC8weDFjClvCoMKgwqAgMC42Njc0NjFdwqAgZHVtcF9zdGFjaysweGI0
LzB4MTAwClvCoMKgwqAgMC42Njc3NjhdwqAgcGFuaWMrMHgxMjAvMHgyZjQKW8KgwqDCoCAwLjY2
ODA0Nl3CoCBtb3VudF9ibG9ja19yb290KzB4MmEwLzB4MzI4ClvCoMKgwqAgMC42Njg0MDFdwqAg
bW91bnRfcm9vdCsweDdjLzB4ODgKW8KgwqDCoCAwLjY2ODQ1N10gbW1jMTogcmVxIGRvbmUgKENN
RDYpOiAwOiAwMDAwMDkwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMApbwqDCoMKgIDAuNjY4
NzAwXcKgIHByZXBhcmVfbmFtZXNwYWNlKzB4MTU0LzB4MTY0ClvCoMKgwqAgMC42NjkyODhdIG1t
YzE6wqDCoMKgwqAgNjQgYnl0ZXMgdHJhbnNmZXJyZWQ6IDAKW8KgwqDCoCAwLjY2OTY0Ml3CoCBr
ZXJuZWxfaW5pdF9mcmVlYWJsZSsweDFkMC8weDI1NApbwqDCoMKgIDAuNjcwMDQwXSBtbWMxOiBj
bG9jayAyNTAwMDAwMEh6IGJ1c21vZGUgMiBwb3dlcm1vZGUgMiBjcyAwIFZkZCAyMQp3aWR0aCAx
IHRpbWluZyAwClvCoMKgwqAgMC42NzA0MDRdwqAga2VybmVsX2luaXQrMHgxMC8weGY4ClvCoMKg
wqAgMC42NzExMzFdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDI1MDAwMDAw
SHogKHNsb3QgcmVxCjI1MDAwMDAwSHosIGFjdHVhbCAyNTAwMDAwMEhaIGRpdiA9IDApClvCoMKg
wqAgMC42NzEzNzhdwqAgcmV0X2Zyb21fZm9yaysweDEwLzB4MTgKW8KgwqDCoCAwLjY3MjIzMF0g
bW1jMTogc3RhcnRpbmcgQ01ENTUgYXJnIGFmNTMwMDAwIGZsYWdzIDAwMDAwMDk1CgpzdWdnZXN0
aW5nIHRoYXQgdGhlIGtlcm5lbCBpcyBzdGlsbCBkb2luZyBzdHVmZiB3aXRoIG1tYzEgYWZ0ZXIg
aXQncwphbHJlYWR5IGdpdmVuIHVwIG9uIGZpbmRpbmcgdGhlIHJvb3QgZGV2aWNlLgoKCkhlcmUn
cyBkbWVzZyBmcm9tIGEgc3VjY2Vzc2Z1bCBib290IHwgZ3JlcCBtbWMKCgokIGdyZXAgbW1jIHN1
Y2Nlc3MudHh0ClvCoMKgwqAgMC4wMDAwMDBdIEtlcm5lbCBjb21tYW5kIGxpbmU6IGVhcmx5Y29u
PXVhcnQ4MjUwLG1taW8zMiwweGZmMTMwMDAwCmNvbnNvbGU9dHR5UzIsMTUwMDAwMCBydyByb290
PS9kZXYvbW1jYmxrMXA1IGluaXQ9L3NiaW4vaW5pdAprZ2Rib2M9dHR5UzIsMTUwMDAwMCBsb2ds
ZXZlbD03IGR5bmRiZz0ibW9kdWxlIGR3X21tYyArcCA7IG1vZHVsZQpkd19tbWNfcm9ja2NoaXAg
K3AgOyBtb2R1bGUgbW1jX2NvcmUgK3AiClvCoMKgwqAgMC4xMjM3MTRdIEFEQU1WWSBncGlvIGZp
eGVkIHJlZ3VsYXRvciBxdWlya3MgZGV2aWNlOgpzZG1tYy1yZWd1bGF0b3IgYWN0aXZlX2xvdzog
MQpbwqDCoMKgIDAuNDg1MjE1XSBkd21tY19yb2NrY2hpcCBmZjUwMDAwMC5kd21tYzogSURNQUMg
c3VwcG9ydHMgMzItYml0CmFkZHJlc3MgbW9kZS4KW8KgwqDCoCAwLjQ4NTg3OV0gZHdtbWNfcm9j
a2NoaXAgZmY1MDAwMDAuZHdtbWM6IFVzaW5nIGludGVybmFsIERNQSBjb250cm9sbGVyLgpbwqDC
oMKgIDAuNDg2NDgyXSBkd21tY19yb2NrY2hpcCBmZjUwMDAwMC5kd21tYzogVmVyc2lvbiBJRCBp
cyAyNzBhClvCoMKgwqAgMC40ODcwNTRdIGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBE
VyBNTUMgY29udHJvbGxlciBhdCBpcnEKMjksMzIgYml0IGhvc3QgZGF0YSB3aWR0aCwyNTYgZGVl
cCBmaWZvClvCoMKgwqAgMC40ODk0OTVdIGR3bW1jX3JvY2tjaGlwIGZmNTIwMDAwLmR3bW1jOiBJ
RE1BQyBzdXBwb3J0cyAzMi1iaXQKYWRkcmVzcyBtb2RlLgpbwqDCoMKgIDAuNDkwMTUzXSBkd21t
Y19yb2NrY2hpcCBmZjUyMDAwMC5kd21tYzogVXNpbmcgaW50ZXJuYWwgRE1BIGNvbnRyb2xsZXIu
ClvCoMKgwqAgMC40OTA3NThdIGR3bW1jX3JvY2tjaGlwIGZmNTIwMDAwLmR3bW1jOiBWZXJzaW9u
IElEIGlzIDI3MGEKW8KgwqDCoCAwLjQ5MTMxM10gZHdtbWNfcm9ja2NoaXAgZmY1MjAwMDAuZHdt
bWM6IERXIE1NQyBjb250cm9sbGVyIGF0IGlycQozMCwzMiBiaXQgaG9zdCBkYXRhIHdpZHRoLDI1
NiBkZWVwIGZpZm8KW8KgwqDCoCAwLjQ5Mjk1Ml0gbW1jX2hvc3QgbW1jMDogY2FyZCBpcyBub24t
cmVtb3ZhYmxlLgpbwqDCoMKgIDAuNTA2MTYxXSBtbWNfaG9zdCBtbWMwOiBCdXMgc3BlZWQgKHNs
b3QgMCkgPSA0MDAwMDBIeiAoc2xvdCByZXEKNDAwMDAwSHosIGFjdHVhbCA0MDAwMDBIWiBkaXYg
PSAwKQpbwqDCoMKgIDAuNTU5MTY5XSBkd21tY19yb2NrY2hpcCBmZjUwMDAwMC5kd21tYzogSURN
QUMgc3VwcG9ydHMgMzItYml0CmFkZHJlc3MgbW9kZS4KW8KgwqDCoCAwLjU1OTgzNF0gZHdtbWNf
cm9ja2NoaXAgZmY1MDAwMDAuZHdtbWM6IFVzaW5nIGludGVybmFsIERNQSBjb250cm9sbGVyLgpb
wqDCoMKgIDAuNTYwNDM3XSBkd21tY19yb2NrY2hpcCBmZjUwMDAwMC5kd21tYzogVmVyc2lvbiBJ
RCBpcyAyNzBhClvCoMKgwqAgMC41NjA5ODBdIGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1j
OiBEVyBNTUMgY29udHJvbGxlciBhdCBpcnEKMjksMzIgYml0IGhvc3QgZGF0YSB3aWR0aCwyNTYg
ZGVlcCBmaWZvClvCoMKgwqAgMC41NzU5NjhdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xv
dCAwKSA9IDQwMDAwMEh6IChzbG90IHJlcQo0MDAwMDBIeiwgYWN0dWFsIDQwMDAwMEhaIGRpdiA9
IDApClvCoMKgwqAgMC42NTA2NDddIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9
IDI1MDAwMDAwSHogKHNsb3QgcmVxCjI1MDAwMDAwSHosIGFjdHVhbCAyNTAwMDAwMEhaIGRpdiA9
IDApClvCoMKgwqAgMC42NTc4NzNdIG1tYzE6IG5ldyBTRCBjYXJkIGF0IGFkZHJlc3MgYWY1Mwpb
wqDCoMKgIDAuNjU5MDkxXSBtbWNibGsxOiBtbWMxOmFmNTMgU1UwMkcgMS44NCBHaUIKW8KgwqDC
oCAwLjY3NzIzMV3CoCBtbWNibGsxOiBwMSBwMiBwMyBwNCBwNQpbwqDCoMKgIDAuNjk1NzA4XSBF
WFQ0LWZzIChtbWNibGsxcDUpOiB3YXJuaW5nOiBtb3VudGluZyB1bmNoZWNrZWQgZnMsCnJ1bm5p
bmcgZTJmc2NrIGlzIHJlY29tbWVuZGVkClvCoMKgwqAgMC43MDA3OTZdIEVYVDQtZnMgKG1tY2Js
azFwNSk6IG1vdW50ZWQgZmlsZXN5c3RlbSB3aXRob3V0IGpvdXJuYWwuCk9wdHM6IChudWxsKQpb
wqDCoMKgIDEuMDI5MzMyXSBkd21tY19yb2NrY2hpcCBmZjUyMDAwMC5kd21tYzogQnVzeTsgdHJ5
aW5nIGFueXdheQpbwqDCoMKgIDEuNTI5ODU4XSBtbWNfaG9zdCBtbWMwOiBUaW1lb3V0IHNlbmRp
bmcgY29tbWFuZCAoY21kIDB4MjAyMDAwIGFyZwoweDAgc3RhdHVzIDB4ODAyMDIwMDApClvCoMKg
wqAgMS41NDQ1MjZdIG1tY19ob3N0IG1tYzA6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDMwMDAwMEh6
IChzbG90IHJlcQozMDAwMDBIeiwgYWN0dWFsIDMwMDAwMEhaIGRpdiA9IDApClvCoMKgwqAgMi4w
NjcwNDZdIGR3bW1jX3JvY2tjaGlwIGZmNTIwMDAwLmR3bW1jOiBCdXN5OyB0cnlpbmcgYW55d2F5
ClvCoMKgwqAgMi41Njc1NjVdIG1tY19ob3N0IG1tYzA6IFRpbWVvdXQgc2VuZGluZyBjb21tYW5k
IChjbWQgMHgyMDIwMDAgYXJnCjB4MCBzdGF0dXMgMHg4MDIwMjAwMCkKW8KgwqDCoCAyLjU4MjE5
OV0gbW1jX2hvc3QgbW1jMDogQnVzIHNwZWVkIChzbG90IDApID0gMjAwMDAwSHogKHNsb3QgcmVx
CjIwMDAwMEh6LCBhY3R1YWwgMjAwMDAwSFogZGl2ID0gMCkKW8KgwqDCoCAzLjEwNzM1M10gZHdt
bWNfcm9ja2NoaXAgZmY1MjAwMDAuZHdtbWM6IEJ1c3k7IHRyeWluZyBhbnl3YXkKW8KgwqDCoCAz
LjYwNzg4OV0gbW1jX2hvc3QgbW1jMDogVGltZW91dCBzZW5kaW5nIGNvbW1hbmQgKGNtZCAweDIw
MjAwMCBhcmcKMHgwIHN0YXR1cyAweDgwMjAyMDAwKQpbwqDCoMKgIDMuNjIyNjIwXSBtbWNfaG9z
dCBtbWMwOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSAxMDAwMDBIeiAoc2xvdCByZXEKMTAwMDAwSHos
IGFjdHVhbCAxMDAwMDBIWiBkaXYgPSAwKQpbwqDCoMKgIDQuMTU1MzAwXSBkd21tY19yb2NrY2hp
cCBmZjUyMDAwMC5kd21tYzogQnVzeTsgdHJ5aW5nIGFueXdheQpbwqDCoMKgIDQuNjU1ODM5XSBt
bWNfaG9zdCBtbWMwOiBUaW1lb3V0IHNlbmRpbmcgY29tbWFuZCAoY21kIDB4MjAyMDAwIGFyZwow
eDAgc3RhdHVzIDB4ODAyMDIwMDApCgphbmQgZm9yIGEgZmFpbGVkIGJvb3QKCiQgZ3JlcCBtbWMg
ZmFpbC50eHQKW8KgwqDCoCAwLjAwMDAwMF0gS2VybmVsIGNvbW1hbmQgbGluZTogZWFybHljb249
dWFydDgyNTAsbW1pbzMyLDB4ZmYxMzAwMDAKY29uc29sZT10dHlTMiwxNTAwMDAwIHJ3IHJvb3Q9
L2Rldi9tbWNibGsxcDUgaW5pdD0vc2Jpbi9pbml0CmtnZGJvYz10dHlTMiwxNTAwMDAwIGxvZ2xl
dmVsPTcgZHluZGJnPSJtb2R1bGUgZHdfbW1jICtwIDsgbW9kdWxlCmR3X21tY19yb2NrY2hpcCAr
cCA7IG1vZHVsZSBtbWNfY29yZSArcCIKW8KgwqDCoCAwLjEyMzc5OV0gQURBTVZZIGdwaW8gZml4
ZWQgcmVndWxhdG9yIHF1aXJrcyBkZXZpY2U6CnNkbW1jLXJlZ3VsYXRvciBhY3RpdmVfbG93OiAx
ClvCoMKgwqAgMC40ODUyOTVdIGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBJRE1BQyBz
dXBwb3J0cyAzMi1iaXQKYWRkcmVzcyBtb2RlLgpbwqDCoMKgIDAuNDg1OTU1XSBkd21tY19yb2Nr
Y2hpcCBmZjUwMDAwMC5kd21tYzogVXNpbmcgaW50ZXJuYWwgRE1BIGNvbnRyb2xsZXIuClvCoMKg
wqAgMC40ODY1NjBdIGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBWZXJzaW9uIElEIGlz
IDI3MGEKW8KgwqDCoCAwLjQ4NzEyOF0gZHdtbWNfcm9ja2NoaXAgZmY1MDAwMDAuZHdtbWM6IERX
IE1NQyBjb250cm9sbGVyIGF0IGlycQoyOSwzMiBiaXQgaG9zdCBkYXRhIHdpZHRoLDI1NiBkZWVw
IGZpZm8KW8KgwqDCoCAwLjQ4OTU4NF0gZHdtbWNfcm9ja2NoaXAgZmY1MjAwMDAuZHdtbWM6IElE
TUFDIHN1cHBvcnRzIDMyLWJpdAphZGRyZXNzIG1vZGUuClvCoMKgwqAgMC40OTAyNDNdIGR3bW1j
X3JvY2tjaGlwIGZmNTIwMDAwLmR3bW1jOiBVc2luZyBpbnRlcm5hbCBETUEgY29udHJvbGxlci4K
W8KgwqDCoCAwLjQ5MDg0OV0gZHdtbWNfcm9ja2NoaXAgZmY1MjAwMDAuZHdtbWM6IFZlcnNpb24g
SUQgaXMgMjcwYQpbwqDCoMKgIDAuNDkxNDAwXSBkd21tY19yb2NrY2hpcCBmZjUyMDAwMC5kd21t
YzogRFcgTU1DIGNvbnRyb2xsZXIgYXQgaXJxCjMwLDMyIGJpdCBob3N0IGRhdGEgd2lkdGgsMjU2
IGRlZXAgZmlmbwpbwqDCoMKgIDAuNDkzMDQzXSBtbWNfaG9zdCBtbWMwOiBjYXJkIGlzIG5vbi1y
ZW1vdmFibGUuClvCoMKgwqAgMC41MDYyNDhdIG1tY19ob3N0IG1tYzA6IEJ1cyBzcGVlZCAoc2xv
dCAwKSA9IDQwMDAwMEh6IChzbG90IHJlcQo0MDAwMDBIeiwgYWN0dWFsIDQwMDAwMEhaIGRpdiA9
IDApClvCoMKgwqAgMC41NTkyNDldIGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBJRE1B
QyBzdXBwb3J0cyAzMi1iaXQKYWRkcmVzcyBtb2RlLgpbwqDCoMKgIDAuNTU5OTYwXSBkd21tY19y
b2NrY2hpcCBmZjUwMDAwMC5kd21tYzogVXNpbmcgaW50ZXJuYWwgRE1BIGNvbnRyb2xsZXIuClvC
oMKgwqAgMC41NjA1NjRdIGR3bW1jX3JvY2tjaGlwIGZmNTAwMDAwLmR3bW1jOiBWZXJzaW9uIElE
IGlzIDI3MGEKW8KgwqDCoCAwLjU2MTEwOF0gZHdtbWNfcm9ja2NoaXAgZmY1MDAwMDAuZHdtbWM6
IERXIE1NQyBjb250cm9sbGVyIGF0IGlycQoyOSwzMiBiaXQgaG9zdCBkYXRhIHdpZHRoLDI1NiBk
ZWVwIGZpZm8KW8KgwqDCoCAxLjA2MzUyMV0gZHdtbWNfcm9ja2NoaXAgZmY1MjAwMDAuZHdtbWM6
IEJ1c3k7IHRyeWluZyBhbnl3YXkKW8KgwqDCoCAxLjU2NDA0OV0gbW1jX2hvc3QgbW1jMDogVGlt
ZW91dCBzZW5kaW5nIGNvbW1hbmQgKGNtZCAweDIwMjAwMCBhcmcKMHgwIHN0YXR1cyAweDgwMjAy
MDAwKQpbwqDCoMKgIDEuNTY0OTI1XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkg
PSA0MDAwMDBIeiAoc2xvdCByZXEKNDAwMDAwSHosIGFjdHVhbCA0MDAwMDBIWiBkaXYgPSAwKQpb
wqDCoMKgIDEuNTc5NjcxXSBtbWNfaG9zdCBtbWMwOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSAzMDAw
MDBIeiAoc2xvdCByZXEKMzAwMDAwSHosIGFjdHVhbCAzMDAwMDBIWiBkaXYgPSAwKQpbwqDCoMKg
IDIuMTA5NDg0XSBkd21tY19yb2NrY2hpcCBmZjUyMDAwMC5kd21tYzogQnVzeTsgdHJ5aW5nIGFu
eXdheQpbwqDCoMKgIDIuNjEwMDE1XSBtbWNfaG9zdCBtbWMwOiBUaW1lb3V0IHNlbmRpbmcgY29t
bWFuZCAoY21kIDB4MjAyMDAwIGFyZwoweDAgc3RhdHVzIDB4ODAyMDIwMDApClvCoMKgwqAgMi42
MTI0MTFdIFZGUzogQ2Fubm90IG9wZW4gcm9vdCBkZXZpY2UgIm1tY2JsazFwNSIgb3IKdW5rbm93
bi1ibG9jaygwLDApOiBlcnJvciAtNgoKCj4KPj4gSSB3ZW50IGJhY2sgb3ZlciBteSBjb25maWcg
d2l0aCBhIGZpbmUgdG9vdGggY29tYiBhbmQgZm91bmQgYSBmZXcKPj4gcm9ja2NoaXAgZHJpdmVy
cyBJIHdhcyBtaXNzaW5nIGluY2x1ZGluZyBQSU5DVFJMX1JLODA1IHdoaWNoIHNlZW1zCj4+IHJl
bGF0ZWQgYnV0IEkgaG9uZXN0bHkgY2FuJ3QgZmlndXJlIG91dCBob3cuwqAgSSB3aWxsIHRyeSB0
byBuYXJyb3cgZG93bgo+PiB3aGljaCBzcGVjaWZpYyBkcml2ZXIgd2FzIG1pc3NpbmcuwqAgSXQg
d2FzIG9kZCBiZWNhdXNlIGl0IHdvdWxkIGZpbmQgdGhlCj4+IG1tYyBob3N0IGJ1dCBqdXN0IGZh
aWwgbm90aWNlIHRoYXQgYSBjYXJkIHdhcyBwcmVzZW50LsKgIEl0IHNlZW1lZCB0byBzZXQKPj4g
dGhlIHJlZ2lzdGVyIGNvcnJlY3RseSBhbmQgaWRlbnRpZnkgdGhlIG1tYyBob3N0LCBidXQgZmFp
bGVkIHRvIG5vdGljZQo+PiBhbnkgY2FyZCBwcmVzZW50Lgo+Cj4gUElOQ1RSTF9SSzgwNSBzaG91
bGQgb25seSBiZSBmb3IgdGhlIGNvdXBsZSBvZiBHUElPIHBpbnMgb24gdGhlIFBNSUMKPiBpdHNl
bGYgd2hpY2ggSUlSQyB0aGUgcmVmZXJlbmNlIGRlc2lnbiB1c2VzIGZvciB0aGUgZXRoZXJuZXQg
TEVEcywgc28KPiBJIHdvdWxkbid0IGV4cGVjdCBpdCB0byBiZSByZWxldmFudC4KSW5kZWVkLsKg
IEkgd2FzIGRyYXdpbmcgY29ubmVjdGlvbnMgdGhhdCB3ZXJlbid0IHRoZXJlIGR1ZSB0byB0aGUg
Zmxha2luZXNzLgo+Cj4gVGhvc2Ugc3ltcHRvbXMgbWFrZSBzZW5zZSBmb3IgdGhlIHZvbHRhZ2Vz
IGJlaW5nIGJhY2t3YXJkcyAob3IganVzdAo+IHN0dWNrIGF0IDEuOFYpIHRob3VnaCAtIHdoZW4g
dGhlIEkvTyBkb21haW4gaXMgY29uZmlndXJlZCB0byBleHBlY3QKPiAzLjNWLCAxLjhWIGlzIHRv
byBsb3cgdG8gcmVnaXN0ZXIgYXMgYSBsb2dpYyBoaWdoLCBzbyBMaW51eCB3aWxsCj4gYWx3YXlz
IHRoaW5rIHRoYXQgc29tZXRoaW5nIGlzIGluc2VydGVkIGluIHRoZSBzbG90LCBidXQgbm90IHRh
bGtpbmcgYmFjay4KCkhtbS7CoCBJIHRyaWVkIGFkZGluZyBicm9rZW4tY2QsIGJ1dCBJIGNvdWxk
bid0IHRlbGwgYW55IHNpZ25pZmljYW50CmRpZmZlcmVuY2UgaW4gdGhlIHJhdGUgb2Ygc3VjY2Vz
c2Z1bCBib290cy4KCkkgaGF2ZSBhbiBlbW1jIG1vZHVsZSBjb21pbmcgc28gaG9wZWZ1bGx5IEkg
Y2FuIGhhdmUgc29tZXRoaW5nIHJlbGlhYmxlCnRvIGJvb3QgZnJvbSBhbmQgY2FuIGl0ZXJhdGUg
ZmFzdGVyIHdpdGhvdXQgaGF2aW5nIHRvIHBoeXNpY2FsbHkgbW92ZSBhbgpzZGNhcmQgYmFjayBh
bmQgZm9ydGggZXZlcnkgdGltZS4KCj4gUm9iaW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
