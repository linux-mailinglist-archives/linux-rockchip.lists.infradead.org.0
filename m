Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E93A6FD57
	for <lists+linux-rockchip@lfdr.de>; Mon, 22 Jul 2019 12:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dMFRvqSgpuSMaBEoGiwu5rTD0uyTtAbkkPg7y4lK8w=; b=nhDz+1WhUqdwLa
	sghpL4mJ+z6eg0JbmAcky0YOwS/hnzaOONusSej636V4weh42Cj8nHvWnPalPOJbTOFLaEV3TB9cT
	guzprp+lAsPUa0QWCenrd3KeJjCKPj7BRdRN0w2B2IWVrTIBM+e7VfMv1pV97+v/e6FtfZsRWZd+T
	MZKioDtnh3cTScckpUxpmJwMUMEG4glN4vDQgmM4wYNDv8p2TGkTej21pjPEz9Uc00gHJLcDAciGf
	91025nKcWutmSeZaylpISOsSvmGJvzn7f+C4JlAvt5NzQqh16M06SAZ1wKXTIkDEdorhzyR7gmaUl
	PZH0Va3flhv2gFtNTfiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV86-0006Ga-8Z; Mon, 22 Jul 2019 10:01:14 +0000
Received: from legacy.eumx.net ([2001:470:9853::71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV7z-00064T-UO
 for linux-rockchip@lists.infradead.org; Mon, 22 Jul 2019 10:01:10 +0000
Subject: Re: RK3288 DDR3 Write Leveling Support
To: Kever Yang <kever.yang@rock-chips.com>, Phillip Karls <prkarls@gmail.com>
References: <64036f34-240a-e9e8-bba6-a843a1ff9b9e@embed.me.uk>
 <2e3e32c0-dc5a-1bbb-6460-44770d5aa027@rock-chips.com>
 <CACyHK7=5g5wUf_KbqFXaPEcx+RYOQfdN9eyiVDjf0AfvRBQi0Q@mail.gmail.com>
 <28dc4932-290e-8a5c-8ce5-4f91350b22fd@rock-chips.com>
From: Jack Mitchell <ml@embed.me.uk>
Message-ID: <e7c83461-9c46-3a9c-202d-475c75128de5@embed.me.uk>
Date: Mon, 22 Jul 2019 11:00:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <28dc4932-290e-8a5c-8ce5-4f91350b22fd@rock-chips.com>
Content-Language: en-BW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_030108_315912_D4C7CD1F 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org,
 =?UTF-8?B?5L2V54G/6Ziz?= <canyang.he@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

fEhpIEtldmVyLCBUaGF0J3MgZGlzYXBwb2ludGluZywgYnV0IGdvb2QgdG8ga25vdy4gQ2FuIHlv
dSBwbGVhc2UgdGVsbAp1cyB3aGVyZSB3ZSBjYW4gZmluZCB0aGUgZGVzaWduIGd1aWRlPyBUaGFu
a3MsIFBoaWxsaXAgfAoKT24gMTkvMDcvMjAxOSAwNzo1MiwgS2V2ZXIgWWFuZyB3cm90ZToKPgo+
IEhpIFBoaWxpcCBhbmQgSmFjaywKPgo+IMKgwqDCoCBSSzMyODggZG9lcyBub3Qgc3VwcG9ydCBE
RFIzIHdyaXRlIGxldmVsaW5nLgo+Cj4gwqDCoMKgIFJvY2tjaGlwIGhhdmUgaGFyZHdhcmUgZGVz
aWduIGd1aWRlIGZvciBSSzMyODggaW5jbHVkaW5nIEREUgo+IGxheW91dCByZXF1aXJlbWVudC4K
Pgo+Cj4gVGhhbmtzLAo+IC0gS2V2ZXIKPiBPbiAyMDE5LzcvMTcg5LiK5Y2IMTE6NTUsIFBoaWxs
aXAgS2FybHMgd3JvdGU6Cj4+IEhpIEtldmVyLAo+Pgo+PiBUaGFua3MgZm9yIGdldHRpbmcgYmFj
ayBvbiB0aGlzLiBXcml0ZSBsZXZlbGluZyBpcyBhIHByZXR0eSBpbXBvcnRhbnQKPj4gZmVhdHVy
ZSBpbiBERFIzLiBXZSB3ZXJlIGxlZCB0byBiZWxpZXZlIHRoZSBSSzMyODggc3VwcG9ydGVkIHdy
aXRlCj4+IGxldmVsaW5nIGR1ZSB0byB0aGUgZm9sbG93aW5nOgo+PiBTZWN0aW9uIDcuMSBvZiB2
ZXJzaW9uIDEuMCBvZiB0aGUgUkszMjg4IFRSTSBzdGF0ZXM6Cj4+IC9Db21wbGV0ZSwgaW50ZWdy
YXRlZCwgc2luZ2xlLXZlbmRvciBERFIzLCBERFIzTCwgTFBERFIyLCBMUEREUjMKPj4gc29sdXRp
b24gREZJIDIuMSBpbnRlcmZhY2UgY29tcGF0aWJpbGl0eS8KPj4KPj4gU2VjdGlvbiAzLjYgb2Yg
dmVyc2lvbiAyLjEgb2YgdGhlIERGSSBTcGVjaWZpY2F0aW9uIFN0YXRlczoKPj4gL1RoZSBkZmlf
cmRsdmxfbW9kZSwgZGZpX3dybHZsX21vZGUgYW5kIGRmaV9yZGx2bF9nYXRlX21vZGUgc2lnbmFs
cwo+PiBhcmUgcmVxdWlyZWQgZm9yIGFsbMKgRERSMyBtZW1vcnkgc3lzdGVtcy4gVGhlc2Ugc2ln
bmFscyBhcmUgdXNlZCB0bwo+PiBpbmRpY2F0ZSB0aGUgdHlwZSBvZiBkYXRhIGV5ZSB0cmFpbmlu
ZyzCoGdhdGUgdHJhaW5pbmcgYW5kIHdyaXRlCj4+IGxldmVsaW5nIHN1cHBvcnRlZCBieSB0aGUg
UEhZOiDigJxObyBTdXBwb3J04oCdLCDigJxNQyBFdmFsdWF0aW9u4oCdLMKg4oCcUEhZCj4+IEV2
YWx1YXRpb27igJ0gb3Ig4oCcUEhZIEluZGVwZW5kZW504oCdLiBUaGUgTUMgbXVzdCBzdXBwb3J0
IGFsbCBvZiB0aGUKPj4gbGV2ZWxpbmfCoG1vZGVzIHRvIGJlIGZ1bGx5IERGSS1jb21wbGlhbnQ7
IGhvd2V2ZXIsIHRoZSBQSFkgaXMKPj4gZXhwZWN0ZWQgdG8gc3VwcG9ydCBvbmx5IGEgc2luZ2xl
wqBtb2RlIHBlciB0cmFpbmluZyBvcGVyYXRpb24uIFRoZQo+PiBzaWduYWxzIHJlcXVpcmVkIGZv
ciBkYXRhIGV5ZSB0cmFpbmluZywgZ2F0ZSB0cmFpbmluZyBhbmTCoHdyaXRlCj4+IGxldmVsaW5n
IG11c3QgYmUgbGltaXRlZCB0byB0aGUgc2lnbmFscyBkZWZpbmVkIGluIHRoaXMgc3BlY2lmaWNh
dGlvbi4vCj4+Cj4+IFRoZSByZWdpc3RlciBsaXN0IGluIFRSTSBhbHNvIHNob3dzIHRoYXQgdGhl
IFJLMzI4OCBjb250YWlucyB0aGUKPj4gbmVjZXNzYXJ5IERGSSBzaWduYWxzIHRvIGltcGxlbWVu
dCB3cml0ZSBsZXZlbGluZy4gRG9lcyBpdCBzdGF0ZQo+PiBzb21ld2hlcmUgdGhhdCB3cml0ZSBs
ZXZlbGluZyBpcyBub3Qgc3VwcG9ydGVkPwo+Pgo+PiBJZiBpdCB0cnVseSBpc24ndCBzdXBwb3J0
ZWQsIGRvIHlvdSBrbm93IHdoYXQgcm91dGluZyBydWxlcyBzaG91bGQgYmUKPj4gdXNlZCB0byBs
YXlvdXQgdGhlIEREUjM/IEZvciBleGFtcGxlLCB3aGF0IGlzIHRoZSBhbGxvd2VkIHNrZXcKPj4g
YmV0d2VlbiB0aGUgYnl0ZSBsYW5lcyBhbmQgdGhlIGNsb2NrL2FkZHJlc3MvY29tbWFuZCBzaWdu
YWxzPwo+Pgo+PiBUaGFua3MsCj4+Cj4+IFBoaWxsaXAKPj4KPj4KPj4KPj4KPj4gT24gVHVlLCBK
dWwgMTYsIDIwMTkgYXQgNjo1MyBQTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMu
Y29tCj4+IDxtYWlsdG86a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4+IHdyb3RlOgo+Pgo+PiAg
ICAgSGkgSmFjaywKPj4KPj4gICAgIE9uIDIwMTkvNy8xNyDkuIrljYgyOjAyLCBKYWNrIE1pdGNo
ZWxsIHdyb3RlOgo+PiAgICAgPiBJJ3ZlIGdvdCBhbiBpc3N1ZSB3aGVyZSBJJ20gdHJ5aW5nIHRv
IGltcGxlbWVudCB3cml0ZSBsZXZlbGxpbmcKPj4gICAgIGZvciBERFIzCj4+ICAgICA+IG9uIGFu
IFJLMzI4OC4gRnJvbSB3aGF0IEkgY2FuIHRlbGwgYnkgcmVhZGluZyB0aGUgVFJNLCBERFIzIHdy
aXRlCj4+ICAgICA+IGxldmVsaW5nIGlzIHN1cHBvcnRlZC4KPj4KPj4KPj4gICAgIENvdWxkIHlv
dSBzaGFyZSB3aGljaCBkb2N1bWVudCBkbyB5b3UgZmluZCBpbmZvcm1hdGlvbiB0aGF0IFJLMzI4
OAo+PiAgICAgc3VwcG9ydCBERFIzIHdyaXRlCj4+Cj4+ICAgICBsZXZlbGluZz8gRnJvbSB3aGF0
IEkga25vdywgUkszMjg4IGRvZXMgbm90IHN1cHBvcnQgdGhpcyBmZWF0dXJlLgo+Pgo+Pgo+PiAg
ICAgVGhhbmtzLAo+Pgo+PiAgICAgLSBLZXZlcgo+Pgo+PiAgICAgPgo+PiAgICAgPiBGb3Igc29t
ZSByZWFzb24gSSBjYW7igJl0IHNlZW0gdG8gZ2V0IHRoZSB3cml0ZSBsZXZlbGluZyByb3V0aW5l
Cj4+ICAgICB0byBydW4KPj4gICAgID4gYW5kIGNvbXBlbnNhdGUgZm9yIHRoZSBpbmRpdmlkdWFs
IGJ5dGUgbGFuZSBza2V3cy4gQWNjb3JkaW5nIHRvIHRoZQo+PiAgICAgPiBERFJfUENUTF9ERklU
UlNUQVQwIHJlZ2lzdGVyLCB0aGUgUEhZIGlzIGNvbmZpZ3VyZWQgZm9yIFBIWQo+PiAgICAgSW5k
ZXBlbmRlbnQKPj4gICAgID4gbW9kZSAocmVhZGluZyAweDMwMzAzKS4KPj4gICAgID4KPj4gICAg
ID4gQWNjb3JkaW5nIHRvIHRoZSBERkkgMi4xIHNwZWM6Cj4+ICAgICA+Cj4+ICAgICA+ICJJbiBQ
SFkgSW5kZXBlbmRlbnQgbW9kZSwgdGhlIFBIWSBpcyByZXNwb25zaWJsZSBmb3IgZXhlY3V0aW5n
Cj4+ICAgICBkYXRhIGV5ZQo+PiAgICAgPiB0cmFpbmluZywgZ2F0ZSB0cmFpbmluZyBvciB3cml0
ZSBsZXZlbGluZyBpbmRlcGVuZGVudCBvZiB0aGUgTWVtb3J5Cj4+ICAgICA+IENvbnRyb2xsZXIu
IEluIHRoaXMgbW9kZSwgdGhlIGFzc29jaWF0ZWQgdHJhaW5pbmcgaW50ZXJmYWNlIGlzCj4+ICAg
ICBub3QgdXNlZAo+PiAgICAgPiBvdGhlciB0aGFuIHRoZSBtb2RlIHNpZ25hbCB0byB0aGUgTUMu
Cj4+ICAgICA+Cj4+ICAgICA+IFRoZSBNZW1vcnkgQ29udHJvbGxlciBzaG91bGQgYmUgY2FwYWJs
ZSBvZiBnZW5lcmF0aW5nIHRoZQo+PiAgICAgcmVxdWlyZWQgTVJTCj4+ICAgICA+IGNvbW1hbmRz
IHRvIGVudGVyIG9yIGV4aXQgdGhlIHRlc3QgbW9kZXMgb2YgdGhlIG1lbW9yeSBkZXZpY2VzLgo+
PiAgICAgVGhlc2UKPj4gICAgID4gb3BlcmF0aW9ucyBhcmUgbm90IGF1dG9tYXRpY2FsbHkgZ2Vu
ZXJhdGVkLgo+PiAgICAgPgo+PiAgICAgPiBBbGwgdHJhaW5pbmcgc2VxdWVuY2VzLCByZWdhcmRs
ZXNzIG9mIG1vZGUsIGFyZSBleHBlY3RlZCB0byBiZQo+PiAgICAgZXhlY3V0ZWQKPj4gICAgID4g
YWZ0ZXIgbWVtb3J5IGluaXRpYWxpemF0aW9uLiBGb3IgUEhZIEluZGVwZW5kZW50IG1vZGUsIHRo
ZSB1cGRhdGUKPj4gICAgID4gaW50ZXJmYWNlIG1heSBiZSB1c2VkIHRvIHN1c3BlbmQgbWVtb3J5
IGNvbW1hbmRzIHdoaWxlIHRoZSB0cmFpbmluZwo+PiAgICAgPiBzZXF1ZW5jZXMgYXJlIGV4ZWN1
dGVkLiIKPj4gICAgID4KPj4gICAgID4gVGhlIGN1cnJlbnQgZHJpdmVyIChzZHJhbV9yazMyODgu
YykgbWFrZXMgbm8gcmVmZXJlbmNlIHRvIEREUjMKPj4gICAgIHdyaXRlCj4+ICAgICA+IGxldmVs
aW5nLiBIZXJlIGlzIHdoYXQgSeKAmXZlIHRyaWVkIHdpdGhvdXQgbHVjazoKPj4gICAgID4KPj4g
ICAgID4KPj4gICAgID4KPj4gICAgID4gMS4gQ29uZmlndXJlIHRoZSBEUkFNcyBmb3Igd3JpdGUg
bGV2ZWxpbmcgdXNpbmcgdGhlIGFwcHJvcHJpYXRlIE1SUwo+PiAgICAgPiBjb21tYW5kcy4KPj4g
ICAgID4KPj4gICAgID4KPj4gICAgID4gLy8gSXNzdWUgYSBtb2RlIHJlZ2lzdGVyIHNldCAoTVJT
KSBjb21tYW5kIHRvIE1SMSB0byBlbmFibGUgd3JpdGUKPj4gICAgID4gbGV2ZWxpbmcgKE1SMVs3
XSA9ICcxJykgYW5kIGRpc2FibGUgdGhlIG91dHB1dCBvZiB0aGUgU0RSQU0KPj4gICAgIChNUjFb
MTJdID0KPj4gICAgID4gJzEnKS4gVGhpcyBjb21tYW5kIGlzIGlzc3VlZCBzaW11bHRhbmVvdXNs
eSB0byBhbGwgcmFua3MuCj4+ICAgICA+Cj4+ICAgICA+IHNlbmRfY29tbWFuZF9vcF9jb3JyZWN0
ZWQocGN0bCwgMywgTVJTX0NNRCwgMSwKPj4gICAgID4gKHNkcmFtX3BhcmFtcy0+cGh5X3RpbWlu
Zy5tciA8aHR0cDovL3BoeV90aW1pbmcubXI+WzFdIHwgKDEgPDwKPj4gICAgIDcpIHwgKDEgPDwg
MTIpKSk7Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+IC8vIEVuYWJsZSB0aGUg
b3V0cHV0IG9mIHRoZSByYW5rIGJlaW5nIHdyaXRlLWxldmVsZWQuIFRoaXMgaXMKPj4gICAgIGRv
bmUgYnkKPj4gICAgID4gaXNzdWluZyBhIE1SUyBjb21tYW5kIHRvIHRoZSBzZWxlY3RlZCByYW5r
IHdpdGggYml0IE1SMVsxMl0gc2V0Cj4+ICAgICB0byAnMCcuCj4+ICAgICA+IE1SMVs3XSBpcyBr
ZXB0IHNldCB3aGVuIGlzc3VpbmcgdGhpcyBjb21tYW5kIHRvIG1ha2Ugc3VyZSB3cml0ZQo+PiAg
ICAgbGV2ZWxpbmcKPj4gICAgID4gcmVtYWlucyBlbmFibGVkIGZvciB0aGUgcmFuay4gV2FpdCB0
TU9EIHRvIHNhdGlzZnkgU0RSQU0gTVJTIHRvCj4+ICAgICBvdGhlcgo+PiAgICAgPiBjb21tYW5k
cyB0aW1pbmcuCj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+IHNlbmRfY29tbWFuZF9vcF9jb3Jy
ZWN0ZWQocGN0bCwgMSwgTVJTX0NNRCwgMSwKPj4gICAgID4gKChzZHJhbV9wYXJhbXMtPnBoeV90
aW1pbmcubXIgPGh0dHA6Ly9waHlfdGltaW5nLm1yPlsxXSB8ICgxIDw8Cj4+ICAgICA3KSkgJiAw
eDBmZmYpKTsKPj4gICAgID4KPj4gICAgID4KPj4gICAgID4KPj4gICAgID4gMi4gQ29uZmlndXJl
IHRoZSBEUkFNcyBmb3Igd3JpdGUgbGV2ZWxpbmcgdXNpbmcgdGhlIGFwcHJvcHJpYXRlIE1SUwo+
PiAgICAgPiBjb21tYW5kcyBhbmQgc2V0IHRoZSBkZmlfd3JsdmxfZW4gYml0IGluIHJlZ2lzdGVy
Cj4+ICAgICBERFJfUENUTF9ERklUUldSTFZMRU46Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+
IC8vIElzc3VlIGEgbW9kZSByZWdpc3RlciBzZXQgKE1SUykgY29tbWFuZCB0byBNUjEgdG8gZW5h
YmxlIHdyaXRlCj4+ICAgICA+IGxldmVsaW5nIChNUjFbN10gPSAnMScpIGFuZCBkaXNhYmxlIHRo
ZSBvdXRwdXQgb2YgdGhlIFNEUkFNCj4+ICAgICAoTVIxWzEyXSA9Cj4+ICAgICA+ICcxJykuIFRo
aXMgY29tbWFuZCBpcyBpc3N1ZWQgc2ltdWx0YW5lb3VzbHkgdG8gYWxsIHJhbmtzLgo+PiAgICAg
Pgo+PiAgICAgPgo+PiAgICAgPiBzZW5kX2NvbW1hbmRfb3BfY29ycmVjdGVkKHBjdGwsIDMsIE1S
U19DTUQsIDEsCj4+ICAgICA+IChzZHJhbV9wYXJhbXMtPnBoeV90aW1pbmcubXIgPGh0dHA6Ly9w
aHlfdGltaW5nLm1yPlsxXSB8ICgxIDw8Cj4+ICAgICA3KSB8ICgxIDw8IDEyKSkpOwo+PiAgICAg
Pgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiAvLyBFbmFibGUgdGhlIG91dHB1dCBvZiB0aGUg
cmFuayBiZWluZyB3cml0ZS1sZXZlbGVkLiBUaGlzIGlzCj4+ICAgICBkb25lIGJ5Cj4+ICAgICA+
IGlzc3VpbmcgYSBNUlMgY29tbWFuZCB0byB0aGUgc2VsZWN0ZWQgcmFuayB3aXRoIGJpdCBNUjFb
MTJdIHNldAo+PiAgICAgdG8gJzAnLgo+PiAgICAgPiBNUjFbN10gaXMga2VwdCBzZXQgd2hlbiBp
c3N1aW5nIHRoaXMgY29tbWFuZCB0byBtYWtlIHN1cmUgd3JpdGUKPj4gICAgIGxldmVsaW5nCj4+
ICAgICA+IHJlbWFpbnMgZW5hYmxlZCBmb3IgdGhlIHJhbmsuIFdhaXQgdE1PRCB0byBzYXRpc2Z5
IFNEUkFNIE1SUyB0bwo+PiAgICAgb3RoZXIKPj4gICAgID4gY29tbWFuZHMgdGltaW5nLgo+PiAg
ICAgPgo+PiAgICAgPgo+PiAgICAgPiBzZW5kX2NvbW1hbmRfb3BfY29ycmVjdGVkKHBjdGwsIDEs
IE1SU19DTUQsIDEsCj4+ICAgICA+ICgoc2RyYW1fcGFyYW1zLT5waHlfdGltaW5nLm1yIDxodHRw
Oi8vcGh5X3RpbWluZy5tcj5bMV0gfCAoMSA8PAo+PiAgICAgNykpICYgMHgwZmZmKSk7Cj4+ICAg
ICA+Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+IC8vIFNldCBkZml0cndybHZsZW4gaGlnaAo+
PiAgICAgPgo+PiAgICAgPiB3cml0ZWwoMHgxZmYsICZwY3RsLT5kZml0cndybHZsZW4pOwo+PiAg
ICAgPgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiAzLiBDb25maWd1cmUgdGhlIERSQU1zIGZv
ciB3cml0ZSBsZXZlbGluZyB1c2luZyB0aGUgYXBwcm9wcmlhdGUgTVJTCj4+ICAgICA+IGNvbW1h
bmRzLCBzZXQgdGhlIGRmaV93cmx2bF9lbiBiaXQgaW4gcmVnaXN0ZXIKPj4gICAgIEREUl9QQ1RM
X0RGSVRSV1JMVkxFTiwKPj4gICAgID4gYW5kIHJlcnVuIG1lbW9yeV9pbml0KCkuCj4+ICAgICA+
Cj4+ICAgICA+Cj4+ICAgICA+IC8vIElzc3VlIGEgbW9kZSByZWdpc3RlciBzZXQgKE1SUykgY29t
bWFuZCB0byBNUjEgdG8gZW5hYmxlIHdyaXRlCj4+ICAgICA+IGxldmVsaW5nIChNUjFbN10gPSAn
MScpIGFuZCBkaXNhYmxlIHRoZSBvdXRwdXQgb2YgdGhlIFNEUkFNCj4+ICAgICAoTVIxWzEyXSA9
Cj4+ICAgICA+ICcxJykuIFRoaXMgY29tbWFuZCBpcyBpc3N1ZWQgc2ltdWx0YW5lb3VzbHkgdG8g
YWxsIHJhbmtzLgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiBzZW5kX2NvbW1hbmRfb3BfY29y
cmVjdGVkKHBjdGwsIDMsIE1SU19DTUQsIDEsCj4+ICAgICA+IChzZHJhbV9wYXJhbXMtPnBoeV90
aW1pbmcubXIgPGh0dHA6Ly9waHlfdGltaW5nLm1yPlsxXSB8ICgxIDw8Cj4+ICAgICA3KSB8ICgx
IDw8IDEyKSkpOwo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiAvLyBFbmFibGUg
dGhlIG91dHB1dCBvZiB0aGUgcmFuayBiZWluZyB3cml0ZS1sZXZlbGVkLiBUaGlzIGlzCj4+ICAg
ICBkb25lIGJ5Cj4+ICAgICA+IGlzc3VpbmcgYSBNUlMgY29tbWFuZCB0byB0aGUgc2VsZWN0ZWQg
cmFuayB3aXRoIGJpdCBNUjFbMTJdIHNldAo+PiAgICAgdG8gJzAnLgo+PiAgICAgPiBNUjFbN10g
aXMga2VwdCBzZXQgd2hlbiBpc3N1aW5nIHRoaXMgY29tbWFuZCB0byBtYWtlIHN1cmUgd3JpdGUK
Pj4gICAgIGxldmVsaW5nCj4+ICAgICA+IHJlbWFpbnMgZW5hYmxlZCBmb3IgdGhlIHJhbmsuIFdh
aXQgdE1PRCB0byBzYXRpc2Z5IFNEUkFNIE1SUyB0bwo+PiAgICAgb3RoZXIKPj4gICAgID4gY29t
bWFuZHMgdGltaW5nLgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiBzZW5kX2NvbW1hbmRfb3Bf
Y29ycmVjdGVkKHBjdGwsIDEsIE1SU19DTUQsIDEsCj4+ICAgICA+ICgoc2RyYW1fcGFyYW1zLT5w
aHlfdGltaW5nLm1yIDxodHRwOi8vcGh5X3RpbWluZy5tcj5bMV0gfCAoMSA8PAo+PiAgICAgNykp
ICYgMHgwZmZmKSk7Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+IC8vIFNldCBk
Zml0cndybHZsZW4gaGlnaAo+PiAgICAgPgo+PiAgICAgPiB3cml0ZWwoMHgxZmYsICZwY3RsLT5k
Zml0cndybHZsZW4pOwo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiBtZW1vcnlf
aW5pdChwdWJsLCBzZHJhbV9wYXJhbXMtPmJhc2UuZHJhbXR5cGUpOwo+PiAgICAgPgo+PiAgICAg
Pgo+PiAgICAgPgo+PiAgICAgPiA0LiBNYW51YWxseSBjb250cm9sIHRoZSBkZmlfd3JsdmxfZW4s
IGRmaV93cmx2bF9zdHJvYmUsCj4+ICAgICBkZmlfd3JsdmxfbG9hZCwKPj4gICAgID4gYW5kIGRm
aV93cmx2bF9kZWxheSBiaXRzIHdoaWxlIG1vbml0b3JpbmcgdGhlIGRmaV93cmx2bF9yZXNwCj4+
ICAgICBiaXRzIGFzCj4+ICAgICA+IGRlc2NyaWJlZCBpbiBGaWd1cmUgNTAgb2YgdmVyc2lvbiAy
LjEgb2YgdGhlIEREUiBQSFkgSW50ZXJmYWNlCj4+ICAgICAoREZJKQo+PiAgICAgPiBTcGVjaWZp
Y2F0aW9uOgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiAvLyBJc3N1ZSBhIG1vZGUgcmVnaXN0
ZXIgc2V0IChNUlMpIGNvbW1hbmQgdG8gTVIxIHRvIGVuYWJsZSB3cml0ZQo+PiAgICAgPiBsZXZl
bGluZyAoTVIxWzddID0gJzEnKSBhbmQgZGlzYWJsZSB0aGUgb3V0cHV0IG9mIHRoZSBTRFJBTQo+
PiAgICAgKE1SMVsxMl0gPQo+PiAgICAgPiAnMScpLiBUaGlzIGNvbW1hbmQgaXMgaXNzdWVkIHNp
bXVsdGFuZW91c2x5IHRvIGFsbCByYW5rcy4KPj4gICAgID4KPj4gICAgID4KPj4gICAgID4gc2Vu
ZF9jb21tYW5kX29wX2NvcnJlY3RlZChwY3RsLCAzLCBNUlNfQ01ELCAxLAo+PiAgICAgPiAoc2Ry
YW1fcGFyYW1zLT5waHlfdGltaW5nLm1yIDxodHRwOi8vcGh5X3RpbWluZy5tcj5bMV0gfCAoMSA8
PAo+PiAgICAgNykgfCAoMSA8PCAxMikpKTsKPj4gICAgID4KPj4gICAgID4KPj4gICAgID4KPj4g
ICAgID4gLy8gRW5hYmxlIHRoZSBvdXRwdXQgb2YgdGhlIHJhbmsgYmVpbmcgd3JpdGUtbGV2ZWxl
ZC4gVGhpcyBpcwo+PiAgICAgZG9uZSBieQo+PiAgICAgPiBpc3N1aW5nIGEgTVJTIGNvbW1hbmQg
dG8gdGhlIHNlbGVjdGVkIHJhbmsgd2l0aCBiaXQgTVIxWzEyXSBzZXQKPj4gICAgIHRvICcwJy4K
Pj4gICAgID4gTVIxWzddIGlzIGtlcHQgc2V0IHdoZW4gaXNzdWluZyB0aGlzIGNvbW1hbmQgdG8g
bWFrZSBzdXJlIHdyaXRlCj4+ICAgICBsZXZlbGluZwo+PiAgICAgPiByZW1haW5zIGVuYWJsZWQg
Zm9yIHRoZSByYW5rLiBXYWl0IHRNT0QgdG8gc2F0aXNmeSBTRFJBTSBNUlMgdG8KPj4gICAgIG90
aGVyCj4+ICAgICA+IGNvbW1hbmRzIHRpbWluZy4KPj4gICAgID4KPj4gICAgID4KPj4gICAgID4g
c2VuZF9jb21tYW5kX29wX2NvcnJlY3RlZChwY3RsLCAxLCBNUlNfQ01ELCAxLAo+PiAgICAgPiAo
KHNkcmFtX3BhcmFtcy0+cGh5X3RpbWluZy5tciA8aHR0cDovL3BoeV90aW1pbmcubXI+WzFdIHwg
KDEgPDwKPj4gICAgIDcpKSAmIDB4MGZmZikpOwo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPgo+
PiAgICAgPiAvLyBTZXQgZGZpdHJ3cmx2bGVuIGhpZ2gKPj4gICAgID4KPj4gICAgID4gd3JpdGVs
KDB4MWZmLCAmcGN0bC0+ZGZpdHJ3cmx2bGVuKTsKPj4gICAgID4KPj4gICAgID4KPj4gICAgID4K
Pj4gICAgID4gaW50IGluZGV4MDsKPj4gICAgID4KPj4gICAgID4KPj4gICAgID4KPj4gICAgID4g
Zm9yIChpbmRleDAgPSAwOyBpbmRleDAgPCAxMDAwMDsgaW5kZXgwKyspCj4+ICAgICA+Cj4+ICAg
ICA+IHsKPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoC8vIFNldCB0aGUgZGVsYXkKPj4gICAg
ID4KPj4gICAgID7CoCDCoCDCoCDCoHdyaXRlbChpbmRleDAsICZwY3RsLT5kZml0cndybHZsZGVs
YXkwKTsKPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoHVkZWxheSgxKTsKPj4gICAgID4KPj4g
ICAgID7CoCDCoCDCoCDCoAo+PiAgICAgPgo+PiAgICAgPsKgIMKgIMKgIMKgLy8gU2V0IGRmaV93
cmx2bF9sb2FkCj4+ICAgICA+Cj4+ICAgICA+wqAgwqAgwqAgwqB3cml0ZWwoMHg4MDAwMWZmMCwg
JnBjdGwtPmRmaXRyY21kKTsKPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoHVkZWxheSgxKTsK
Pj4gICAgID4KPj4gICAgID4KPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoC8vIFNldCBkZmlf
d3Jsdmxfc3Ryb2JlCj4+ICAgICA+Cj4+ICAgICA+wqAgwqAgwqAgwqB3cml0ZWwoMHg4MDAwMWZm
MSwgJnBjdGwtPmRmaXRyY21kKTsKPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoHVkZWxheSgx
KTsKPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoAo+PiAgICAgPgo+PiAgICAgPsKgIMKgIMKg
IMKgLy8gUmVhZCBkZmlfd3JsdmxfcmVzcDAKPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoGlm
IChyZWFkbCgmcGN0bC0+ZGZpdHJ3cmx2bHJlc3AwKSAmIDB4MSkKPj4gICAgID4KPj4gICAgID7C
oCDCoCDCoCDCoHsKPj4gICAgID4KPj4gICAgID7CoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGJyZWFr
Owo+PiAgICAgPgo+PiAgICAgPsKgIMKgIMKgIMKgfQo+PiAgICAgPgo+PiAgICAgPiB9Cj4+ICAg
ICA+Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+Cj4+ICAgICA+IEhlcmUgaXMg
dGhlIHNlbmRfY29tbWFuZF9vcF9jb3JyZWN0ZWQgZnVuY3Rpb24gZGVmaW5pdGlvbi4KPj4gICAg
ID4KPj4gICAgID4KPj4gICAgID4gc3RhdGljIGlubGluZSB2b2lkIHNlbmRfY29tbWFuZF9vcF9j
b3JyZWN0ZWQoc3RydWN0IHJrMzI4OF9kZHJfcGN0bAo+PiAgICAgPiAqcGN0bCzCoCB1MzIgcmFu
aywgdTMyIGNtZCwgdTMyIG1hLCB1MzIgb3ApCj4+ICAgICA+Cj4+ICAgICA+IHsKPj4gICAgID4K
Pj4gICAgID7CoCDCoCDCoCDCoHNlbmRfY29tbWFuZChwY3RsLCByYW5rLCBjbWQsIChtYSAmIDB4
MykgPDwgMTcgfCAob3AgJgo+PiAgICAgMHgxZmZmKSA8PCA0KTsKPj4gICAgID4KPj4gICAgID4g
fQo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPgo+PiAgICAgPiBOb25lIG9mIHRoZXNlIGdlbmVy
YXRlIGFueSBhY3Rpdml0eSBvbiB0aGUgRERSIGJ1cywgYmVzaWRlcyB0aGUgTVJTCj4+ICAgICA+
IGNvbW1hbmRzLgo+PiAgICAgPgo+PiAgICAgPiBEb2VzIGFueW9uZSBrbm93IHdoYXQgSSBuZWVk
IHRvIGRvIHRvIHRyaWdnZXIgYSB3cml0ZSBsZXZlbGluZwo+PiAgICAgcm91dGluZT8KPj4gICAg
ID4gSXQgc2VlbXMgbGlrZSBhZnRlciB0aGUgRFJBTXMgYXJlIGNvbmZpZ3VyZWQsIEkgd291bGQg
bmVlZCB0byBzZXQKPj4gICAgID4gc29tZXRoaW5nIG9uIHRoZSBSSzMyODggdG8gdHJpZ2dlciBp
dC4KPj4gICAgID4KPj4gICAgID4gVGhlIFRSTSBpcyBwcmV0dHkgc3BhcnNlIHdoZW4gaXQgY29t
ZXMgdG8gZGlzY3Vzc2luZyB3cml0ZQo+PiAgICAgbGV2ZWxpbmcsCj4+ICAgICA+IGRvZXMgYW55
b25lIGtub3cgaWYgdGhlIFBIWSBhY3R1YWxseSBzdXBwb3J0cyB0aGlzPwo+PiAgICAgPgo+PiAg
ICAgPiBUaGFua3MhCj4+ICAgICA+Cj4+ICAgICA+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+ICAgICA+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dAo+PiAgICAgPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+ICAgICA8bWFp
bHRvOkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4+ICAgICA+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPj4KPj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
