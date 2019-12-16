Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5250E1205EF
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 13:38:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SIDYP+kxC9joozABMJLQhiCsfSW8OGZ0ri7zvcL+xZQ=; b=Sc6RXuAxzKfwhvSHAHJGjZ6Dg
	L4czGCs5tYoYchH9b2jMsHFUSuF76Y13tOUU130/OHI2JU2dRvoq8vq2uYptbE5kimOn0G+hrKS9S
	0J3dhak+Gbm1WxxbZMWxN3olPuWKBigs3Te2hPrnPCt1qNllBqXOyPOHkmhJte3XeZdKBOfmphDll
	Jvx72w6Pt/L4jSRRf1S6kelXGsi7hNJj/9b8n//5uH3WfnO6L/ZzsHaethIqNDTpvrOKOIEzlGBrO
	Q3gVNLK6m4kzDi8EnGqStoh+Mi1vdS3YYX0vbok3uvNmnFMhrfSs688l3ta9YWHxjTONqJOEzqo2d
	6pWwtDRpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpeC-0005e2-4j; Mon, 16 Dec 2019 12:38:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpe6-0005UA-H3
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 12:38:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B77C1FB;
 Mon, 16 Dec 2019 04:38:39 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2708C3F719;
 Mon, 16 Dec 2019 04:38:38 -0800 (PST)
Subject: Re: [PATCH 4/4] mfd: rk808: Convert RK805 to syscore/PM ops
To: Anand Moon <linux.amoon@gmail.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <cover.1575932654.git.robin.murphy@arm.com>
 <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
 <CANAwSgTtzAZJqpsD7uVKskTnDmrT1bs=JuHxnPrkpQKtnZLhvQ@mail.gmail.com>
 <2681192.H4ySjFOPB8@diego>
 <CANAwSgTL-9VCFFj-+4xsLZOxKCHtjyN4P6fYnuRSOe7cZRiWew@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f29fbb91-ffd0-5650-30b4-5791c970a834@arm.com>
Date: Mon, 16 Dec 2019 12:38:51 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgTL-9VCFFj-+4xsLZOxKCHtjyN4P6fYnuRSOe7cZRiWew@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043842_680281_A8C2AA24 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Lee Jones <lee.jones@linaro.org>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMjAxOS0xMi0xNiA5OjUwIGFtLCBBbmFuZCBNb29uIHdyb3RlOgo+IEhpIEhlaWtvIC8gUm9i
aW4gLyBTb2VyZW4sCj4gCj4gT24gTW9uLCAxNiBEZWMgMjAxOSBhdCAwMTo1NywgSGVpa28gU3TD
vGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4+Cj4+IEhpIEFuYW5kLAo+Pgo+PiBBbSBT
b25udGFnLCAxNS4gRGV6ZW1iZXIgMjAxOSwgMTk6NTE6NTAgQ0VUIHNjaHJpZWIgQW5hbmQgTW9v
bjoKPj4+IE9uIFR1ZSwgMTAgRGVjIDIwMTkgYXQgMTg6NTQsIFJvYmluIE11cnBoeSA8cm9iaW4u
bXVycGh5QGFybS5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gUks4MDUgaGFzIHRoZSBzYW1lIGtpbmQg
b2YgZHVhbC1yb2xlIHNsZWVwL3NodXRkb3duIHBpbiBhcyBSSzgwOS9SSzgxNywKPj4+PiBzbyBp
dCBtYWtlcyBsaXR0bGUgc2Vuc2UgZm9yIHRoZSBkcml2ZXIgdG8gaGF2ZSB0byBoYXZlIHR3byBj
b21wbGV0ZWx5Cj4+Pj4gZGlmZmVyZW50IG1lY2hhbmlzbXMgdG8gaGFuZGxlIGVzc2VudGlhbGx5
IHRoZSBzYW1lIHRoaW5nLiBCcmluZyBSSzgwNQo+Pj4+IGluIGxpbmUgd2l0aCB0aGUgUks4MDkv
Uks4MTcgZmxvdyB0byBjbGVhbiB0aGluZ3MgdXAuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBS
b2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPgo+Pj4+IC0tLQo+Pgo+PiBbLi4uXQo+
Pgo+Pj4gSSBhbSBzaWxsIGdldHRpbmcgdGhlIGtlcm5lbCB3YXJuaW5nIG9uIGlzc3VlIHBvd2Vy
b2ZmIHNlZSBiZWxvdy4KPj4+IG9uIG15IFJvY2s5NjAgTW9kZWwgQQo+Pj4gSSBmZWVsIHRoZSBy
ZWFzb24gZm9yIHRoaXMgaXMgd2Ugbm93IGhhdmUgdHdvIHBvd2Vyb2ZmIGNhbGxiYWNrCj4+PiAx
ICBwbV9wb3dlcl9vZmYgPSByazgwOF9kZXZpY2Vfc2h1dGRvd24KPj4+IDIgIHJrOHh4X3N5c2Nv
cmVfc2h1dGRvd24KPj4KPj4gTm9wZSwgdGhlIGlzc3VlIGlzIGp1c3QgdGhlIGkyYyBzdWJzeXN0
ZW0gY29tcGxhaW5pbmcgdGhhdCB0aGUKPj4gUm9jY2toaXAgaTJjIGRyaXZlcyBkb2VzIG5vdCBw
cm92aWRlIGFuIGF0b21pYy10cmFuc2ZlciBmdW5jdGlvbiwgc2VlCj4+ICAgICAgICAgICJObyBh
dG9taWMgSTJDIHRyYW5zZmVyIGhhbmRsZXIgZm9yICdpMmMtMCciCj4+IGluIHlvdXIgd2Fybmlu
Zy4KPj4KPj4gU29tZXdoZXJlIGl0IHdhcyBzdWdnZXN0ZWQgdGhhdCB0aGUgY3VycmVudCB0cmFu
c2ZlciBmdW5jdGlvbiBqdXN0Cj4+IHdvcmtzIGFzIGF0b21pYyBhcyB3ZWxsLgo+Pgo+Pgo+Pj4g
SW4gbXkgaW52ZXN0aWdhdGlvbiBlYXJsaWVyIGNvbW1vbiBmdW5jdGlvbiBmb3Igc2h1dGRvd24g
c29sdmUKPj4+IHRoZSBpc3N1ZSBvZiBjbGVhbiBzaHV0ZG93bi4KPj4KPj4gVGhpcyBpcyBzaW1w
bHkgYSByZXN1bHQgb2YgeW91ciBzeXNjb3JlLXNodXRkb3duIGZ1bmN0aW9uIHJ1bm5pbmcgd2F5
IHRvCj4+IGVhcmx5LCBiZWZvcmUgdGhlIGkyYyBzdWJzeXN0ZW0gc3dpdGNoZWQgdG8gdXNpbmcg
YXRvbWljIHRyYW5zZmVycy4KPj4KPj4gVGhpcyBhbHNvIGluZGljYXRlcyB0aGF0IHRoaXMgd291
bGQgcmVhbGx5IGJlIHdheSB0byBlYXJseSwgYXMgb3RoZXIgcGFydHMKPj4gb2YgdGhlIGtlcm5l
bCBjb3VsZCBhbHNvIHN0aWxsIGJlIHJ1bm5pbmcuCj4+Cj4gCj4gWWVzLCB5b3UgYXJlIGNvcnJl
Y3Qgc3lzY29yZS1zaHV0ZG93biBpbml0aWF0ZXMKPiBzaHV0ZG93biBiZWZvcmUgYWxsIHRoZSBk
ZXZpY2UgZG8gY2xlYW4gc2h1dGRvd24uCj4gCj4gU28gZm9yIGJlc3QgYXBwcm9hY2ggZm9yIGNs
ZWFuIGF0b21pYyBzaHV0ZG93biBpcyB0byB1c2UKPiAgICAvKiBkcml2ZXIgbW9kZWwgaW50ZXJm
YWNlcyB0aGF0IGRvbid0IHJlbGF0ZSB0byBlbnVtZXJhdGlvbiAgKi8KPiAgICAgICAgICB2b2lk
ICgqc2h1dGRvd24pKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpOwo+IGRyb3AgdGhlIHJlZ2lz
dHJhdGlvbiBvZiBzeXNjb3JlIGFuZCB1c2UgY29yZSAuaTJjX3NodXRkb3duLgoKSHVoPyBJZiB5
b3UgdW5kZXJzdGFuZCB0aGF0IHRoZSBzeXNjb3JlIHNodXRkb3duIGhvb2sgaXMgdG9vIGVhcmx5
LCB3aHkgCndvdWxkIGl0IHNlZW0gYSBnb29kIGlkZWEgdG8gcHVsbCB0aGUgcGx1ZyBldmVuIGVh
cmxpZXIgZnJvbSBkcml2ZXIgCnNodXRkb3duPyBOb3QgdG8gbWVudGlvbiB0aGF0IHlvdXIgcGF0
Y2ggYXMgcHJvcG9zZWQgYnJlYWtzIGFsbCB0aGUgCkdQSU8tYmFzZWQgc2h1dGRvd24gZmxvd3Mu
CgpJZiB5b3UgcmVhbGx5IGNhcmUgYWJvdXQgYXZvaWRpbmcgdGhlIHNwdXJpb3VzIHdhcm5pbmcs
IGltcGxlbWVudCB0aGUgCmV4cGVjdGVkIHBvbGxlZC1tb2RlIHRyYW5zZmVyIGZ1bmN0aW9uIGlu
IHRoZSBJMkMgZHJpdmVyLiBUcnlpbmcgdG8gaGFjayAKYXJvdW5kIGl0IGJ5IGlzc3VpbmcgSTJD
LWJhc2VkIHNodXRkb3duIGZyb20gYW55d2hlcmUgb3RoZXIgdGhhbiAKcG1fcG93ZXJfb2ZmIGlz
IGEgd2FzdGUgb2YgZXZlcnlvbmUncyB0aW1lLgoKPiBJIGhhdmUgcHJlcGFyZSB0aGlzIHBhdGNo
IG9uIHRvcCBvZiB0aGlzIHNlcmllcyBmb3IgUlRGCj4gVGhpcyBwYXRjaCBkb3NlIGNsZWFuIHNo
dXRkb3duIG9mIGFsbCB0aGUgZGV2aWNlcyBiZWZvcmUgcG93ZXJvZmYuCj4gc2VlIHRoZSBsb2cg
YmVsb3cuCj4gCj4gKk5vdGUqOiBUaGlzIGZlYXR1cmUgd2lsbCBsaWtlbHkgYnJlYWsgdGhlIGNs
ZWFuIHJlYm9vdCBmZWF0dXJlLgo+IFJvY2tjaGlwIGRldmljZSBkbyBub3QgcGVyZm9ybSBjbGVh
biByZWJvb3QgYXMgc29tZSBvZiB0aGUgSVAKPiBibG9jayBhcmUgbm90IHJlbGVhc2VkIGJlZm9y
ZSBjbGVhbiByZWJvb3QgYW5kIGl0J3MgcmVtYWluIHN0dWNrLgo+IExpa2UgUENJZSBhbmQgTU1D
LCBXZSBuZWVkIHRvIGxvb2sgaW50byB0aGlzIGFzIHdlbGwuCgpBcyBtZW50aW9uZWQgYmVmb3Jl
LCB0aGF0IGxpa2VseSBoYXMgbm90aGluZyB0byBkbyB3aXRoIHRoZSBQTUlDLCBhbmQgCnJlYWxs
eSBzb3VuZHMgbGlrZSB0aGUgaXNzdWUgd2l0aCBUcnVzdGVkIEZpcm13YXJlIG5vdCByZWVuYWJs
aW5nIGFsbCAKdGhlIFNvQyBwb3dlciBkb21haW5zIGJlZm9yZSByZXNldCAtIGEgZml4IGZvciB0
aGF0IGhhcyBhbHJlYWR5IGJlZW4gCmlkZW50aWZpZWQsIHNlZSBoZXJlOiAKaHR0cHM6Ly9mb3J1
bS5hcm1iaWFuLmNvbS90b3BpYy83NTUyLXJvYy1yazMzOTktcGMtcmVuZWdhZGUtZWxpdGUvP2Rv
PWZpbmRDb21tZW50JmNvbW1lbnQ9OTAyODkKClJvYmluLgoKPiBTaHV0ZG93biBsb2cgb2YgbXkg
UkszMzk5IFJvY2s5NjAgTW9kZWwgQQo+IFswXSBodHRwczovL3Bhc3RlYmluLmNvbS9wZVl4bXpi
Nwo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+IFsgIE9LICBdIFN0b3BwZWQgTFZNMiBtZXRhZGF0YSBkYWVt
b24uCj4gWyAgT0sgIF0gUmVhY2hlZCB0YXJnZXQgU2h1dGRvd24uCj4gWyAgT0sgIF0gUmVhY2hl
ZCB0YXJnZXQgRmluYWwgU3RlcC4KPiBbICBPSyAgXSBDbG9zZWQgTFZNMiBtZXRhZGF0YSBkYWVt
b24gc29ja2V0Lgo+IFsgIE9LICBdIFN0YXJ0ZWQgUG93ZXItT2ZmLgo+IFsgIE9LICBdIFJlYWNo
ZWQgdGFyZ2V0IFBvd2VyLU9mZi4KPiBbICA1NDIuNzE1MjM3XSBzeXN0ZW1kLXNodXRkb3duWzFd
OiBTeW5jaW5nIGZpbGVzeXN0ZW1zIGFuZCBibG9jayBkZXZpY2VzLgo+IFsgIDU0My4xNTgzMTRd
IHN5c3RlbWQtc2h1dGRvd25bMV06IFNlbmRpbmcgU0lHVEVSTSB0byByZW1haW5pbmcgcHJvY2Vz
c2VzLi4uCj4gWyAgNTQzLjE2ODQ2OV0gc3lzdGVtZC1qb3VybmFsZFsyODBdOiBSZWNlaXZlZCBT
SUdURVJNIGZyb20gUElEIDEKPiAoc3lzdGVtZC1zaHV0ZG93KS4KPiBbICA1NDMuMjAyOTY4XSBz
eXN0ZW1kLXNodXRkb3duWzFdOiBTZW5kaW5nIFNJR0tJTEwgdG8gcmVtYWluaW5nIHByb2Nlc3Nl
cy4uLgo+IFsgIDU0My4yMTIzNjVdIHN5c3RlbWQtc2h1dGRvd25bMV06IFVubW91bnRpbmcgZmls
ZSBzeXN0ZW1zLgo+IFsgIDU0My4yMTQ3MDhdIFs1MzVdOiBSZW1vdW50aW5nICcvJyByZWFkLW9u
bHkgaW4gd2l0aCBvcHRpb25zICcobnVsbCknLgo+IFsgIDU0My4yMjk2NjFdIEVYVDQtZnMgKG1t
Y2JsazFwMSk6IHJlLW1vdW50ZWQuIE9wdHM6IChudWxsKQo+IFsgIDU0My4yMzk5NzhdIHN5c3Rl
bWQtc2h1dGRvd25bMV06IEFsbCBmaWxlc3lzdGVtcyB1bm1vdW50ZWQuCj4gWyAgNTQzLjI0MDQ4
MV0gc3lzdGVtZC1zaHV0ZG93blsxXTogRGVhY3RpdmF0aW5nIHN3YXBzLgo+IFsgIDU0My4yNDEw
NTJdIHN5c3RlbWQtc2h1dGRvd25bMV06IEFsbCBzd2FwcyBkZWFjdGl2YXRlZC4KPiBbICA1NDMu
MjQxNTE0XSBzeXN0ZW1kLXNodXRkb3duWzFdOiBEZXRhY2hpbmcgbG9vcCBkZXZpY2VzLgo+IFsg
IDU0My4yNDQ4MDZdIHN5c3RlbWQtc2h1dGRvd25bMV06IEFsbCBsb29wIGRldmljZXMgZGV0YWNo
ZWQuCj4gWyAgNTQzLjI0NTMwN10gc3lzdGVtZC1zaHV0ZG93blsxXTogRGV0YWNoaW5nIERNIGRl
dmljZXMuCj4gWyAgNTQzLjI0NTk5NF0gc3lzdGVtZC1zaHV0ZG93blsxXTogQWxsIERNIGRldmlj
ZXMgZGV0YWNoZWQuCj4gWyAgNTQzLjI0NjQ3NF0gc3lzdGVtZC1zaHV0ZG93blsxXTogQWxsIGZp
bGVzeXN0ZW1zLCBzd2FwcywgbG9vcAo+IGRldmljZXMgYW5kIERNIGRldmljZXMgZGV0YWNoZWQu
Cj4gWyAgNTQzLjMwMjczMl0gc3lzdGVtZC1zaHV0ZG93blsxXTogU3VjY2Vzc2Z1bGx5IGNoYW5n
ZWQgaW50byByb290IHBpdm90Lgo+IFsgIDU0My4zMDMzNTZdIHN5c3RlbWQtc2h1dGRvd25bMV06
IFJldHVybmluZyB0byBpbml0cmQuLi4KPiBbICA1NDMuMzM5Njc5XSBzaHV0ZG93blsxXTogU3lu
Y2luZyBmaWxlc3lzdGVtcyBhbmQgYmxvY2sgZGV2aWNlcy4KPiBbICA1NDMuMzQxMDg0XSBzaHV0
ZG93blsxXTogU2VuZGluZyBTSUdURVJNIHRvIHJlbWFpbmluZyBwcm9jZXNzZXMuLi4KPiBbICA1
NDMuMzQ4OTQ4XSBzaHV0ZG93blsxXTogU2VuZGluZyBTSUdLSUxMIHRvIHJlbWFpbmluZyBwcm9j
ZXNzZXMuLi4KPiBbICA1NDMuMzU2NTUxXSBzaHV0ZG93blsxXTogVW5tb3VudGluZyBmaWxlIHN5
c3RlbXMuCj4gWyAgNTQzLjM1OTA5N10gc2QtdW1vdW5bNTQxXTogVW5tb3VudGluZyAnL29sZHJv
b3Qvc3lzL2tlcm5lbC9jb25maWcnLgo+IFsgIDU0My4zNjE3MTZdIHNkLXVtb3VuWzU0Ml06IFVu
bW91bnRpbmcgJy9vbGRyb290L3N5cy9rZXJuZWwvZGVidWcnLgo+IFsgIDU0My4zNjQzMzNdIHNk
LXVtb3VuWzU0M106IFVubW91bnRpbmcgJy9vbGRyb290L2Rldi9tcXVldWUnLgo+IFsgIDU0My4z
NjY3NjVdIHNkLXVtb3VuWzU0NF06IFVubW91bnRpbmcgJy9vbGRyb290L2Rldi9odWdlcGFnZXMn
Lgo+IFsgIDU0My4zNjk0MjZdIHNkLXVtb3VuWzU0NV06IFVubW91bnRpbmcgJy9vbGRyb290L3N5
cy9mcy9jZ3JvdXAvbWVtb3J5Jy4KPiBbICA1NDMuMzcyMzM4XSBzZC11bW91bls1NDZdOiBVbm1v
dW50aW5nICcvb2xkcm9vdC9zeXMvZnMvY2dyb3VwL3BlcmZfZXZlbnQnLgo+IFsgIDU0My4zNzUw
MzBdIHNkLXVtb3VuWzU0N106IFVubW91bnRpbmcgJy9vbGRyb290L3N5cy9mcy9jZ3JvdXAvY3B1
LGNwdWFjY3QnLgo+IFsgIDU0My4zNzc3NDRdIHNkLXVtb3VuWzU0OF06IFVubW91bnRpbmcgJy9v
bGRyb290L3N5cy9mcy9jZ3JvdXAvcGlkcycuCj4gWyAgNTQzLjM4MDYyMF0gc2QtdW1vdW5bNTQ5
XTogVW5tb3VudGluZyAnL29sZHJvb3Qvc3lzL2ZzL2Nncm91cC9ibGtpbycuCj4gWyAgNTQzLjM4
MzI1Nl0gc2QtdW1vdW5bNTUwXTogVW5tb3VudGluZyAnL29sZHJvb3Qvc3lzL2ZzL2Nncm91cC9o
dWdldGxiJy4KPiBbICA1NDMuMzg2MDE1XSBzZC11bW91bls1NTFdOiBVbm1vdW50aW5nICcvb2xk
cm9vdC9zeXMvZnMvY2dyb3VwL2RldmljZXMnLgo+IFsgIDU0My4zODkxMTRdIHNkLXVtb3VuWzU1
Ml06IFVubW91bnRpbmcgJy9vbGRyb290L3N5cy9mcy9jZ3JvdXAvY3B1c2V0Jy4KPiBbICA1NDMu
MzkxODE3XSBzZC11bW91bls1NTNdOiBVbm1vdW50aW5nICcvb2xkcm9vdC9zeXMvZnMvcHN0b3Jl
Jy4KPiBbICA1NDMuMzk0NDAxXSBzZC11bW91bls1NTRdOiBVbm1vdW50aW5nICcvb2xkcm9vdC9z
eXMvZnMvY2dyb3VwL3N5c3RlbWQnLgo+IFsgIDU0My4zOTcyNDVdIHNkLXVtb3VuWzU1NV06IFVu
bW91bnRpbmcgJy9vbGRyb290L3N5cy9mcy9jZ3JvdXAvdW5pZmllZCcuCj4gWyAgNTQzLjQwMDA4
M10gc2QtdW1vdW5bNTU2XTogVW5tb3VudGluZyAnL29sZHJvb3Qvc3lzL2ZzL2Nncm91cCcuCj4g
WyAgNTQzLjQwMjY1NF0gc2QtdW1vdW5bNTU3XTogVW5tb3VudGluZyAnL29sZHJvb3QvZGV2L3B0
cycuCj4gWyAgNTQzLjQwNTM1MV0gc2QtdW1vdW5bNTU4XTogVW5tb3VudGluZyAnL29sZHJvb3Qv
ZGV2L3NobScuCj4gWyAgNTQzLjQwNzg3Nl0gc2QtdW1vdW5bNTU5XTogVW5tb3VudGluZyAnL29s
ZHJvb3Qvc3lzL2tlcm5lbC9zZWN1cml0eScuCj4gWyAgNTQzLjQxMDMxM10gc2QtdW1vdW5bNTYw
XTogVW5tb3VudGluZyAnL29sZHJvb3QnLgo+IFsgIDU0My40MTA4ODZdIHNkLXVtb3VuWzU2MF06
IEZhaWxlZCB0byB1bm1vdW50IC9vbGRyb290OiBEZXZpY2Ugb3IKPiByZXNvdXJjZSBidXN5Cj4g
WyAgNTQzLjQxMzM1NV0gc2QtdW1vdW5bNTYxXTogVW5tb3VudGluZyAnL29sZHJvb3QvcnVuJy4K
PiBbICA1NDMuNDE1NzUwXSBzZC11bW91bls1NjJdOiBVbm1vdW50aW5nICcvb2xkcm9vdC9kZXYn
Lgo+IFsgIDU0My40MTgwMTNdIHNkLXVtb3VuWzU2M106IFVubW91bnRpbmcgJy9vbGRyb290L3N5
cycuCj4gWyAgNTQzLjQyMDg5Ml0gc2QtdW1vdW5bNTY0XTogVW5tb3VudGluZyAnL29sZHJvb3Qv
cHJvYycuCj4gWyAgNTQzLjQyMzgzM10gc2QtdW1vdW5bNTY1XTogVW5tb3VudGluZyAnL29sZHJv
b3QnLgo+IFsgIDU0My40ODYyNjhdIHNodXRkb3duWzFdOiBBbGwgZmlsZXN5c3RlbXMgdW5tb3Vu
dGVkLgo+IFsgIDU0My40ODY3MTBdIHNodXRkb3duWzFdOiBEZWFjdGl2YXRpbmcgc3dhcHMuCj4g
WyAgNTQzLjQ4NzE1M10gc2h1dGRvd25bMV06IEFsbCBzd2FwcyBkZWFjdGl2YXRlZC4KPiBbICA1
NDMuNDg3NTU2XSBzaHV0ZG93blsxXTogRGV0YWNoaW5nIGxvb3AgZGV2aWNlcy4KPiBbICA1NDMu
NDkwMzAwXSBzaHV0ZG93blsxXTogQWxsIGxvb3AgZGV2aWNlcyBkZXRhY2hlZC4KPiBbICA1NDMu
NDkwNzM1XSBzaHV0ZG93blsxXTogRGV0YWNoaW5nIERNIGRldmljZXMuCj4gWyAgNTQzLjQ5MTM4
Ml0gc2h1dGRvd25bMV06IEFsbCBETSBkZXZpY2VzIGRldGFjaGVkLgo+IFsgIDU0My40OTE4MDFd
IHNodXRkb3duWzFdOiBBbGwgZmlsZXN5c3RlbXMsIHN3YXBzLCBsb29wIGRldmljZXMgYW5kCj4g
RE0gZGV2aWNlcyBkZXRhY2hlZC4KPiBbICA1NDMuNDk0Njc4XSBzaHV0ZG93blsxXTogU3luY2lu
ZyBmaWxlc3lzdGVtcyBhbmQgYmxvY2sgZGV2aWNlcy4KPiBbICA1NDMuNDk1NzcwXSBzaHV0ZG93
blsxXTogUG93ZXJpbmcgb2ZmLgo+IFsgIDU0My40OTYxMTJdIGt2bTogZXhpdGluZyBoYXJkd2Fy
ZSB2aXJ0dWFsaXphdGlvbgo+IAo+IC1BbmFuZAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
