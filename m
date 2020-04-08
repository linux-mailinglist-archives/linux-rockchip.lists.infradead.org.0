Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2B41A23BA
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 16:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFgycXX3tYmb/QeAqyL01W6vyx2TJrBTmWsvX8wCUk8=; b=IYHCFvIyZSMnYv
	Tz4Bl85B6i3vvAEoMu35xJLeuhEEVw81Ie96QOnrDvOgo6cJSHi0/pOcjX/qU4IViUbZZLmwAtTcl
	JJSIsLPRrqGMOQF1FZSNdJIjpc2rB2IOTdgpRKbaDrsYPDm1MOXDN2z+3Cyi/9nzGBJ6DgEvP4gK3
	JEUZQKMGS3fD1ee+p9H59f+Vu3lg1WxkKvgWZtGuuQsgsLnRPbH8vqFe3pYWVx8UP8KnZeM3xUa9O
	QOsL1TE4/c8k7MpnvG7tgCQ3OAKJPN7gELDJv1CeP9AG23l/mIYWnnQhfZ3HzHZU2Wpra4eN/VkfU
	Hjr5XQikTnB1JeonyucQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMBJh-0000aO-EF; Wed, 08 Apr 2020 14:04:33 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMBJe-0000Zq-01
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 14:04:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9024929117E
Message-ID: <f2a044b2c9a0d2920ce3cc327b331a790cd128bb.camel@collabora.com>
Subject: Re: [PATCH v8 4/5] media: rkvdec: Add the rkvdec driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Date: Wed, 08 Apr 2020 11:04:10 -0300
In-Reply-To: <abe902f2ebdfa41bd4d99b7beb3b6c7ec91d2a8f.camel@ndufresne.ca>
References: <20200403221345.16702-1-ezequiel@collabora.com>
 <20200403221345.16702-5-ezequiel@collabora.com>
 <CAKQmDh_pCX_s2Ze7b1YBqgvEZHNrgzDUfcjPos8_GZq8x6=5Ng@mail.gmail.com>
 <5c417620e1baeed7ec4ac750ab481366df2aa590.camel@collabora.com>
 <abe902f2ebdfa41bd4d99b7beb3b6c7ec91d2a8f.camel@ndufresne.ca>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_070430_301282_0F0A5EAE 
X-CRM114-Status: GOOD (  32.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 DVB_Linux_Media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCAyMDIwLTA0LTA3IGF0IDE1OjM2IC0wNDAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3Rl
Ogo+IExlIG1hcmRpIDA3IGF2cmlsIDIwMjAgw6AgMTE6MzUgLTAzMDAsIEV6ZXF1aWVsIEdhcmNp
YSBhIMOpY3JpdCA6Cj4gPiBPbiBNb24sIDIwMjAtMDQtMDYgYXQgMTY6MjcgLTA0MDAsIE5pY29s
YXMgRHVmcmVzbmUgd3JvdGU6Cj4gPiA+IExlIHZlbi4gMyBhdnIuIDIwMjAgw6AgMTg6MTQsIEV6
ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4gYSDDqWNyaXQgOgo+ID4gPiA+
IEZyb206IEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJlemlsbG9uQGNvbGxhYm9yYS5jb20+Cj4g
PiA+ID4gCj4gPiA+ID4gVGhlIHJvY2tjaGlwIHZkZWMgYmxvY2sgaXMgYSBzdGF0ZWxlc3MgZGVj
b2RlciB0aGF0J3MgYWJsZSB0byBkZWNvZGUKPiA+ID4gPiBIMjY0LCBIRVZDIGFuZCBWUDkgY29u
dGVudC4gVGhpcyBjb21taXQgYWRkcyB0aGUgY29yZSBpbmZyYXN0cnVjdHVyZQo+ID4gPiA+IGFu
ZCB0aGUgSDI2NCBiYWNrZW5kLiBTdXBwb3J0IGZvciBWUDkgYW5kIEhFVlMgd2lsbCBiZSBhZGRl
ZCBsYXRlciBvbi4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBCb3JpcyBCcmV6aWxs
b24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiA+ID4gCj4gPiA+IFNv
cnJ5IGZvciB0aGUgbGF0ZSBmZWVkYmFjayAoZ290IGEgY29tbWVudCBsb3dlcikgLi4uCj4gPiA+
IAo+ID4gPiBUZXN0ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29s
bGFib3JhLmNvbT4KPiA+ID4gCj4gPiAKPiA+IE5pY2UsIHRoYW5rIHlvdS4KPiA+IAo+ID4gPiA+
IC0tCj4gPiA+ID4gdjg6Cj4gPiA+ID4gKiBGaXgga2ZyZWUgYW5kIHN0eWxlIGNoYW5nZXMsIGFz
IHN1Z2dlc3RlZCBieSBBbmRyaXkuCj4gPiA+ID4gdjc6Cj4gPiA+ID4gKiBodmVya3VpbC1jaXNj
b0B4czRhbGwubmw6IHJlcGxhY2VkIFZGTF9UWVBFX0dSQUJCRVIgYnkgX1ZJREVPCj4gPiA+ID4g
KiBVc2UgbWFjcm9zIGFuZCBBUlJBWV9TSVpFIGluc3RlYWQgb2YgbWFnaWMgbnVtYmVycywKPiA+
ID4gPiAgIGFzIHN1Z2dlc3RlZCBieSBNYXVyby4KPiA+ID4gPiAqIFJlbmFtZWQgTV9OIG1hY3Jv
LCBzdWdnZXN0ZWQgYnkgTWF1cm8uCj4gPiA+ID4gKiBVc2UgdjRsMl9tMm1fYnVmX2RvbmVfYW5k
X2pvYl9maW5pc2guCj4gPiA+ID4gKiBTZXQgYnVmZmVycycgemVyb3RoIHBsYW5lIHBheWxvYWQg
aW4gLmJ1Zl9wcmVwYXJlCj4gPiA+ID4gKiBSZWZhY3RvciB0cnkvc19mbXQgZm9yIHNwZWMgY29t
cGxpYW5jZS4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgICAgNyArCj4gPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9L
Y29uZmlnICAgICAgICAgICAgICB8ICAgIDIgKwo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVk
aWEvTWFrZWZpbGUgICAgICAgICAgICAgfCAgICAxICsKPiA+ID4gPiAgZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JrdmRlYy9LY29uZmlnICAgICAgIHwgICAxNSArCj4gPiA+ID4gIGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9ya3ZkZWMvTWFrZWZpbGUgICAgICB8ICAgIDMgKwo+ID4gPiA+ICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmt2ZGVjL1RPRE8gICAgICAgICAgfCAgIDExICsKPiA+ID4gPiAgZHJp
dmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jIHwgMTE1NiArKysrKysrKysr
KysrKysrKysrKwo+ID4gPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1y
ZWdzLmggfCAgMjIzICsrKysKPiA+ID4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9y
a3ZkZWMuYyAgICAgIHwgMTEwMyArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmggICAgICB8ICAxMjEgKysKPiA+ID4gPiAgMTAg
ZmlsZXMgY2hhbmdlZCwgMjY0MiBpbnNlcnRpb25zKCspCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL0tjb25maWcKPiA+ID4gPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvTWFrZWZpbGUKPiA+ID4g
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvVE9ETwo+
ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9y
a3ZkZWMtaDI2NC5jCj4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmt2ZGVjL3JrdmRlYy1yZWdzLmgKPiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiA+ID4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmgKPiA+ID4gPiAKPiA+
IFsuLl0KPiA+ID4gPiArCj4gPiA+ID4gK3N0YXRpYyB2b2lkIHNldF9wc19maWVsZCh1MzIgKmJ1
Ziwgc3RydWN0IHJrdmRlY19wc19maWVsZCBmaWVsZCwgdTMyIHZhbHVlKQo+ID4gPiA+ICt7Cj4g
PiA+ID4gKyAgICAgICB1OCBiaXQgPSBmaWVsZC5vZmZzZXQgJSAzMiwgd29yZCA9IGZpZWxkLm9m
ZnNldCAvIDMyOwo+ID4gPiA+ICsgICAgICAgdTY0IG1hc2sgPSBHRU5NQVNLX1VMTChiaXQgKyBm
aWVsZC5sZW4gLSAxLCBiaXQpOwo+ID4gPiA+ICsgICAgICAgdTY0IHZhbCA9ICgodTY0KXZhbHVl
IDw8IGJpdCkgJiBtYXNrOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGJ1Zlt3b3JkXSAmPSB+
bWFzazsKPiA+ID4gPiArICAgICAgIGJ1Zlt3b3JkXSB8PSB2YWw7Cj4gPiA+ID4gKyAgICAgICBp
ZiAoYml0ICsgZmllbGQubGVuID4gMzIpIHsKPiA+ID4gPiArICAgICAgICAgICAgICAgYnVmW3dv
cmQgKyAxXSAmPSB+KG1hc2sgPj4gMzIpOwo+ID4gPiA+ICsgICAgICAgICAgICAgICBidWZbd29y
ZCArIDFdIHw9IHZhbCA+PiAzMjsKPiA+ID4gPiArICAgICAgIH0KPiA+ID4gPiArfQo+ID4gPiA+
ICsKPiA+ID4gPiArc3RhdGljIHZvaWQgYXNzZW1ibGVfaHdfcHBzKHN0cnVjdCBya3ZkZWNfY3R4
ICpjdHgsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBya3ZkZWNf
aDI2NF9ydW4gKnJ1bikKPiA+ID4gPiArewo+ID4gPiA+ICsgICAgICAgc3RydWN0IHJrdmRlY19o
MjY0X2N0eCAqaDI2NF9jdHggPSBjdHgtPnByaXY7Cj4gPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1
Y3QgdjRsMl9jdHJsX2gyNjRfc3BzICpzcHMgPSBydW4tPnNwczsKPiA+ID4gPiArICAgICAgIGNv
bnN0IHN0cnVjdCB2NGwyX2N0cmxfaDI2NF9wcHMgKnBwcyA9IHJ1bi0+cHBzOwo+ID4gPiA+ICsg
ICAgICAgY29uc3Qgc3RydWN0IHY0bDJfY3RybF9oMjY0X2RlY29kZV9wYXJhbXMgKmRlY19wYXJh
bXMgPSBydW4tPmRlY29kZV9wYXJhbXM7Cj4gPiA+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgdjRs
Ml9oMjY0X2RwYl9lbnRyeSAqZHBiID0gZGVjX3BhcmFtcy0+ZHBiOwo+ID4gPiA+ICsgICAgICAg
c3RydWN0IHJrdmRlY19oMjY0X3ByaXZfdGJsICpwcml2X3RibCA9IGgyNjRfY3R4LT5wcml2X3Ri
bC5jcHU7Cj4gPiA+ID4gKyAgICAgICBzdHJ1Y3Qgcmt2ZGVjX3Nwc19wcHNfcGFja2V0ICpod19w
czsKPiA+ID4gPiArICAgICAgIGRtYV9hZGRyX3Qgc2NhbGluZ19saXN0X2FkZHJlc3M7Cj4gPiA+
ID4gKyAgICAgICB1MzIgc2NhbGluZ19kaXN0YW5jZTsKPiA+ID4gPiArICAgICAgIHUzMiBpOwo+
ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIC8qCj4gPiA+ID4gKyAgICAgICAgKiBIVyByZWFkIHRo
ZSBTUFMvUFBTIGluZm9ybWF0aW9uIGZyb20gUFBTIHBhY2tldCBpbmRleCBieSBQUFMgaWQuCj4g
PiA+ID4gKyAgICAgICAgKiBvZmZzZXQgZnJvbSB0aGUgYmFzZSBjYW4gYmUgY2FsY3VsYXRlZCBi
eSBQUFNfaWQgKiAzMiAoc2l6ZSBwZXIgUFBTCj4gPiA+ID4gKyAgICAgICAgKiBwYWNrZXQgdW5p
dCkuIHNvIHRoZSBkcml2ZXIgY29weSBTUFMvUFBTIGluZm9ybWF0aW9uIHRvIHRoZSBleGFjdCBQ
UFMKPiA+ID4gPiArICAgICAgICAqIHBhY2tldCB1bml0IGZvciBIVyBhY2Nlc3NpbmcuCj4gPiA+
ID4gKyAgICAgICAgKi8KPiA+ID4gPiArICAgICAgIGh3X3BzID0gJnByaXZfdGJsLT5wYXJhbV9z
ZXRbcHBzLT5waWNfcGFyYW1ldGVyX3NldF9pZF07Cj4gPiA+ID4gKyAgICAgICBtZW1zZXQoaHdf
cHMsIDAsIHNpemVvZigqaHdfcHMpKTsKPiA+ID4gPiArCj4gPiA+ID4gKyNkZWZpbmUgV1JJVEVf
UFBTKHZhbHVlLCBmaWVsZCkgc2V0X3BzX2ZpZWxkKGh3X3BzLT5pbmZvLCBmaWVsZCwgdmFsdWUp
Cj4gPiA+ID4gKyAgICAgICAvKiB3cml0ZSBzcHMgKi8KPiA+ID4gPiArICAgICAgIFdSSVRFX1BQ
UygweGYsIFNFUV9QQVJBTUVURVJfU0VUX0lEKTsKPiA+ID4gPiArICAgICAgIFdSSVRFX1BQUygw
eGZmLCBQUk9GSUxFX0lEQyk7Cj4gPiA+ID4gKyAgICAgICBXUklURV9QUFMoMSwgQ09OU1RSQUlO
VF9TRVQzX0ZMQUcpOwo+ID4gPiAKPiA+ID4gQXQgZmlyc3QgSSBmb3VuZCB0aGF0IHBhcnQgcmF0
aGVyIGludGVyZXN0aW5nLCBidXQgSSBzZWUgdGhpcwo+ID4gPiBoYXJkY29kaW5nIG1hdGNoZXMg
d2hhdCBSb2NrY2hpcCBkby4KPiA+ID4gCj4gPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hp
cC1saW51eC9tcHAvYmxvYi9yZWxlYXNlL21wcC9oYWwvcmtkZWMvaDI2NGQvaGFsX2gyNjRkX3Jr
dl9yZWcuYyNMMjY2Cj4gPiA+IAo+ID4gPiA+ICsgICAgICAgV1JJVEVfUFBTKHNwcy0+Y2hyb21h
X2Zvcm1hdF9pZGMsIENIUk9NQV9GT1JNQVRfSURDKTsKPiA+ID4gCj4gPiA+IEJ1dCBoZXJlJ3Mg
aXQncyBub3Qgc28gZ3JlYXQuIFRoaXMgZHJpdmVyIGRvZXMgbm90IGltcGxlbWVudCBhbnkga2lu
ZAo+ID4gPiBvZiB2YWxpZGF0aW9uLiBJbiBmYWN0LCBpZiBJIHBhc3MgMwo+ID4gPiBoZXJlICAo
WUNiQ3IgNDo0OjQpIGl0IHdpbGwgYWNjZXB0IGl0LCBhbmQga2luZCBvZiBkZWNvZGUgc29tZSBm
cmFtZXMsCj4gPiA+IGJ1dCBldmVudHVhbGx5IHdpdGggY3Jhc2ggYW5kCj4gPiA+IHJlYm9vdCBp
cyBuZWVkZWQuIFdlIHNob3VsZCAoYXMgZGVmaW5lZCBpbiB0aGUgU3RhdGVsc3MgQ09ERUMgc3Bl
YykKPiA+ID4gdmFsaWRhdGUgdGhlIFNQUyBhbmQgcmVmdXNlIGlmCj4gPiA+IGFuIHVuc3VwcG9y
dGVkIHByb2ZpbGUgaWRjLCBjaHJvbWEgaWRjLCBsdW1hL2Nocm9tYSBkZXB0aCBvciBjb2RlZAo+
ID4gPiBzaXplIGlzIHJlcXVlc3RlZC4KPiA+IAo+ID4gUGVyaGFwcyB3ZSBjb3VsZCB2YWxpZGF0
ZSB0aGF0IGF0IHJlcXVlc3RfdmFsaWRhdGUgdGltZSwKPiA+IG9yIG1heWJlIG9wcy50cnlfY3Ry
bCBpcyBiZXR0ZXIuCj4gPiAKPiA+IDwvdGhpbmtpbmdfb3V0X2xvdWQ+Cj4gPiAKPiA+ID4gVmFs
aWRhdGluZyB0aGUKPiA+ID4gU19GTVQgaXMgbm90IHN1ZmZpY2llbnQgYXMgb25lIGNhbiB0cmlj
ayB0aGUgZHJpdmVyIGluIGFsbG9jYXRpbmcKPiA+ID4gYnVmZmVycyB0aGF0IGFyZSB0b28gc21h
bGwuCj4gPiA+IAo+ID4gCj4gPiBJIGFtIG5vdCBzdXJlIEkgZm9sbG93IHlvdTogaG93IGRvIHlv
dSB0aGluayB0aGUgZHJpdmVyCj4gPiBjYW4gYmUgdHJpY2tlZCBsaWtlIHRoaXM/Cj4gCj4gV2hh
dCBJIHNlZSBpcyB0aGF0IHRoZXJlIGlzIG5vIGNyb3NzIHZhbGlkYXRpb24gYmV0d2VlbiB0aGUg
U1BTCj4gcmVnaXN0ZXIgY29uZmlndXJhdGlvbiBhbmQgdGhlIGZyYW1lIGFsbG9jYXRpb25zIGRv
bmUgdGhyb3VnaCBTX0ZNVC4gU28KPiBpZiBJIGNoZWF0IGluIFNfRk1ULCBhbmQgdGhlbiBwYXNz
IGFuIFNQUyB0aGF0IGlzIGxhcmdlciB0aGVuCj4gYW5ub3VuY2VkLCB0aGUgSFcgY291bGQgcG90
ZW50aWFsbHkgb3ZlcnJ1biBidWZmZXJzLiBUaGF0IGVudGlyZWx5Cj4gZGVwZW5kcyBvbiBob3cg
bXVjaCByb2J1c3RuZXNzIHRoZXJlIGlzIGluIHRoZSBIVyBpbXBsZW1lbnRhdGlvbiBpc2VsZgo+
IChhbmQgaWYgd2UgaGF2ZSBhIHJlZ2lzdGVyIHRvIHBhc3MgdGhlIGJ1ZmZlciBzaXplKS4KPiAK
PiBUaGlzIGlzIG9mIGNvdXJzZSBhIGd1dCBmZWVsaW5nLCBJIGhhdmVuJ3QgZm91bmQgdGltZSB0
byB0ZXN0IHRoaXMgeWV0LAo+IGJ1dCBpdCBjYW1lIHRvIG15IG1pbmQgYWZ0ZXIgSSBub3RpY2Ug
dGhhdCBwYXNzaW5nIGEgNDo0OjQgY2hvbWFfaWRjCj4gc3RyZWFtIGNhdXNlcyBkcml2ZXIgZmFp
bHVyZSAobm8gdmlzaWJsZSBtZW1vcnkgY29ycnVwdGlvbiBvciBvdmVycnVuCj4gdGhvdWdoLCB0
aGUgZHJpdmVyIGp1c3Qgc3RvcHMgd29ya2luZykuIFNvIHRoZSByZXN1bHRpbmcgaXNzdWVzIG1p
Z2h0Cj4gbm90IGJlIHRoYXQgYmFkLCBidXQgeW91IGVuZHVwIGxvb3NpbmcgdGhlIGRlY29kZXIu
Cj4gCgpOb3RlIHRoYXQgdGhpcyBkcml2ZXIgKGFzIHdlbGwgYXMgSGFudHJvKSBwcm9ncmFtcyB0
aGUgaGFyZHdhcmUKdXNpbmcgdGhlIG5lZ290aWF0ZWQgcmVzb2x1dGlvbiwgYW5kIGlnbm9yZXMg
d2hhdCB0aGUgU1BTIHNheXMKYWJvdXQgaXQuCgpJdCBzaG91bGRuJ3QgYmUgcG9zc2libGUgdG8g
dHJpY2sgdGhlIGRyaXZlciB0aGlzIHdheS4KCk9UT0gsIGJvdGggZHJpdmVycyBzaG91bGQgaGF2
ZSBhZGRpdGlvbmFsIGNoZWNrcyBmb3Igb3RoZXIgU1BTCmZpZWxkcyBzdWNoIGFzIGNocm9tYV9m
b3JtYXRfaWRjIGFuZCBsdW1hX2JpdF9kZXB0aCwgYXMgeW91CnBvaW50ZWQgb3V0LgoKSSdsbCBh
ZGQgdGhpcyB0byBteSBUT0RPIGxpc3QuIEkgdGhpbmsgaXQncyBkb2FibGUgYXMgZm9sbG93LXVw
CnBhdGNoZXMuCgpUaGFuaywKRXplcXVpZWwKCj4gPiA+IFdoYXQgSSBzdXNwZWN0IGlzIHRoYXQg
d2UgbmVlZCB0byBiZSBjYXJlZnVsIHdpdGggdGhpcyBIVywgYXMgaXQgc2VlbXMKPiA+ID4gdG8g
YmUgYSBiaXQgaGFsZiBiYWNrZWQsIHdoaWNoCj4gPiA+IG1lYW5zIGl0IG1pZ2h0IGJlIHN1cHBv
cnRpbmcgbW9yZSBmZWF0dXJlcyB0aGVuIHN1cHBvcnRlZCBieSB0aGUgVFJNCj4gPiA+IG9yIHJl
ZmVyZW5jZSBjb2RlLCBhbmQgd2UKPiA+ID4gbXVzdCBkaXNhYmxlIHRoaXMgd2l0aCBzb2Z0d2Fy
ZS4KPiA+ID4gCj4gPiA+IChwLnMuIEkgY2FuIHByb3ZpZGUgYSBzdHJlYW0gdG8gcmVwcm9kdWNl
IHRoZSA0OjQ6NCBkcml2ZXIgZmFpbHVyZSkKPiA+ID4gCj4gPiAKPiA+IFRoYW5rcywKPiA+IEV6
ZXF1aWVsCj4gPiAKPiAKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
