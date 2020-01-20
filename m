Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8699142DA4
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 15:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dRNWFLkXAExNnXI6gvTavyKgPoTlPf24M6fAPjYr7x8=; b=SF914qzpYp7V+XK2+9zz4diPs
	toX62n7lLfmcS16UDIl2mXYHGdiuP5yps5+4OtfHo/z89R0DRhnMqjnlStR+CVyeE4L2RY35p7pWB
	83DagXSBKn5IuDCsTPZeSzPbzaXNzJE0c4KKQFXibntEjJIdAitIQpsuFMGh4DwAfcyn/7/NvYxsG
	XaLlv+Zw3Vhj/BbzKdjobjzncxwb9uT6bsJQBAtWaRrdjACI+bt4F9MwH0VbIr97KdVoghiDZaCyC
	mF3u55frN5ZS/qxeFP51MZ0urzXv7gs/Ft/CbbTQuargGDGmqXy4nznzdUHG1HDqT+p+by7JHF/vi
	7QzFfrPIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itY82-0006VS-Qe; Mon, 20 Jan 2020 14:34:10 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itY7y-0006Ui-UZ
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 14:34:09 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1itY7v-0005Vi-Jo; Mon, 20 Jan 2020 15:34:03 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from [192.168.34.101] (p5098d998.dip0.t-ipconnect.de
 [80.152.217.152]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 00KEY2M6025434
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 20 Jan 2020 15:34:03 +0100
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
To: Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
 <20200120115828.GC32175@kuha.fi.intel.com>
 <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
From: Markus Reichl <m.reichl@fivetechno.de>
Organization: five technologies GmbH
Message-ID: <546a5723-a974-ed0a-93e3-b46c919b0f7e@fivetechno.de>
Date: Mon, 20 Jan 2020 15:34:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1579530847;
 9aa228d1; 
X-HE-SMSGID: 1itY7v-0005Vi-Jo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_063407_128246_CA7A4EEC 
X-CRM114-Status: GOOD (  21.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Linux Kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgR3VlbnRlciwKCkFtIDIwLjAxLjIwIHVtIDE1OjIxIHNjaHJpZWIgR3VlbnRlciBSb2VjazoK
PiBPbiAxLzIwLzIwIDM6NTggQU0sIEhlaWtraSBLcm9nZXJ1cyB3cm90ZToKPj4gSGkgTWFya3Vz
LAo+Pgo+PiBPbiBUaHUsIEphbiAwOSwgMjAyMCBhdCAwNToyOTowN1BNICswMTAwLCBNYXJrdXMg
UmVpY2hsIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gSSdtIHdvcmtpbmcgd2l0aCBhIFJPQy1SSzMz
OTktUEMgYXJtNjQgYm9hcmQgZnJvbSBmaXJlZmx5LCBjaXJjdWl0IHNoZWV0IFsxXS4KPj4+IFRo
ZSBib2FyZCBpcyBwb3dlcmVkIGZyb20gYW4gVVNCLUMgdHlwZSBjb25uZWN0b3IgdmlhIGFuIEZV
U0IzMDIgUEQgY29udHJvbGxlci4KPj4+IFdpdGggbWVhc3VyZWQgMTVXKyBwb3dlciBjb25zdW1w
dGlvbiBpdCBzaG91bGQgdXNlIGhpZ2hlciB2b2x0YWdlIFBEIG1vZGVzIHRoYW4KPj4+IHRoZSBz
dGFuZGFyZCA1ViBVU0ItQyBtb2RlLgo+Pj4KPj4+IFdoZW4gSSBhZGQgdGhlIHJlbGF0ZWQgY29u
bmVjdG9yIG5vZGUgaW4gRFRTIFsyXSB0aGUgRlVTQjMwMiBpbml0aWFsaXplcwo+Pj4gdGhlIHJp
Z2h0IFBEIG1vZGUgKGUuZy4gMTVWLzNBKS4KPj4+Cj4+PiBCdXQgZHVyaW5nIGluaXRpYWxpc2F0
aW9uIHRoZSBQRCBpcyBzd2l0Y2hlZCBvZmYgc2hvcnRseSBhbmQgdGhlIGJvYXJkIGhhcyBhIGJs
YWNrb3V0Lgo+Pj4gV2hlbiBJIGluamVjdCBhIGJhY2t1cCBzdXBwbHkgdm9sdGFnZSBiZWhpbmQg
dGhlIEZVU0IzMDIgKGUuZy4gYXQgU1lTXzEyViBsaW5lKSBkdXJpbmcgYm9vdAo+Pj4gSSBjYW4g
cmVtb3ZlIHRoZSBiYWNrdXAgYWZ0ZXIgc3VjY2VzZnVsbCBzZXR0aW5nIHVwIHRoZSBQRCBhbmQg
dGhlIGJvYXJkIHdpbGwgcnVuIGZpbmUuCj4+Pgo+Pj4gSXMgaXQgcG9zc2libGUgdG8gY2hhbmdl
IHRoZSBiZWhhdmlvdXIgb2YgdGhlIGZ1c2IzMDIgZHJpdmVyIHRvIG5vdCBwb3dlciBkb3duIHRo
ZSBQRCBzdXBwbHkKPj4+IGR1cmluZyBpbml0Pwo+Pgo+PiBJIGd1ZXNzIGl0J3MgYWxzbyBwb3Nz
aWJsZSB0aGF0IHRoZSBwcm9ibGVtIGlzIHdpdGggdGNwbS5jIGluc3RlYWQgb2YKPj4gZnVzYjMw
Mi5jLiB0Y3BtLmMgcHJvdmlkZXMgdGhlIFVTQiBQRCBzdGF0ZSBtYXRjaGluZXMuIEd1ZW50ZXIh
IENhbgo+PiB5b3UgdGFrZSBhIGxvb2sgYXQgdGhpcz8KPj4KPiAKPiBUaGVyZSB3YXMgYWx3YXlz
IGEgcHJvYmxlbSB3aXRoIGhhbmRvZmYgZnJvbSB0aGUgYm9vdGxvYWRlci4gdGNwbV9pbml0KCkg
Y2FsbHMKPiB0Y3BtX3Jlc2V0X3BvcnQoKSB3aGljaCB0dXJucyB2YnVzIGFuZCB2Y29ubiBvZmYs
IHdoaWNoIEkgaW1hZ2luZSBjYW4KPiB0cmlnZ2VyIHRoZSBzaXR1YXRpb24uCj4gCj4gVW5mb3J0
dW5hdGVseSBJIHdhcyBuZXZlciBhYmxlIHRvIHNvbHZlIHRoZSBwdXp6bGUuIFRoZSBUeXBlLUMg
cHJvdG9jb2wgZG9lcwo+IG5vdCBzdXBwb3J0IGFueSBraW5kIG9mICJoYW5kLW9mZiIgZnJvbSBv
bmUgY29tcG9uZW50IGluIHRoZSBzeXN0ZW0gdG8gYW5vdGhlci4KPiBJZiB0aGUgc3RhdGUgbWFj
aGluZSBkb2Vzbid0IHN0YXJ0IGZyb20gYSBjbGVhbiBzdGF0ZSwgdGhlcmUgaXMgcHJldHR5Cj4g
bXVjaCBubyBndWFyYW50ZWUgdGhhdCBpdCBldmVyIHN5bmNocm9uaXplcy4KPiAKPiBNYXliZSBz
b21lb25lIGNhbiBmaW5kIGEgYmV0dGVyIHNvbHV0aW9uLCBidXQgd2hlbiBJIHdyb3RlIHRoZSBj
b2RlIEkganVzdAo+IGNvdWxkIG5vdCBnZXQgaXQgdG8gd29yayByZWxpYWJseSB3aXRob3V0IHJl
c2V0dGluZyBldmVyeXRoaW5nIGR1cmluZwo+IHJlZ2lzdHJhdGlvbi4KPiAKPiBOb3RlIHRoYXQg
djQuNCBkaWQgbm90IGluY2x1ZGUgdGhlIHVwc3RyZWFtIHRjcG0gY29kZSwgc3VnZ2VzdGluZyB0
aGUKPiBjb2RlIGluIHRoZSB2ZW5kb3Iga2VybmVsIHdhcyBwb3NzaWJseSB1c2luZyBhIGRpZmZl
cmVudCBvciBiYWNrcG9ydGVkCj4gc3RhdGUgbWFjaGluZS4gSW1wb3NzaWJsZSB0byBzYXkgd2hh
dCB3YXMgZG9uZSB0aGVyZSB3aXRob3V0IGFjY2Vzcwo+IHRvIHRoZSBjb2RlLgoKVGhlIHZlbmRv
ciBjb2RlIGZvciBmdXNiMzAyIGlzIGhlcmU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9GaXJlZmx5VGVh
bS9rZXJuZWwvdHJlZS9yazMzOTkvZmlyZWZseS9kcml2ZXJzL21mZAoKR3J1w58sCi0tIApNYXJr
dXMgUmVpY2hsCj4gCj4gR3VlbnRlcgo+IAo+PiBCb3RoIHRjcG0uYyBhbmQgZnVzYjMwMi5jIGNy
ZWF0ZSBkZWJ1Z2ZzIGVudHJpZXMgdGhhdCBoYXZlIGEgbW9yZQo+PiBkZXRhaWxlZCBsb2cgYWJv
dXQgdGhpbmdzIHRoYXQgYXJlIGhhcHBlbmluZy4gQ2FuIHlvdSBjaGVjayB3aGF0IHlvdQo+PiBo
YXZlIGluIHRob3NlICh3aGVuIHlvdSBib290IHdpdGggdGhlIG1haW5zIGNhYmxlIHBsdWdnZWQg
aXQpPwo+Pgo+PiDCoMKgwqDCoMKgwqDCoMKgICUgbW91bnQgZGVidWdmcyAtdCBkZWJ1Z2ZzIC9z
eXMva2VybmVsL2RlYnVnCj4+IMKgwqDCoMKgwqDCoMKgwqAgJSBjYXQgL3N5cy9rZXJuZWwvZGVi
dWcvdGNwbSoKPj4gwqDCoMKgwqDCoMKgwqDCoCAlIGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9mdXNi
MzAyLyoKPj4KPj4gV2hpY2gga2VybmVsIGFyZSB5b3UgcnVubmluZyBieSB0aGUgd2F5Pwo+Pgo+
Pj4gSW4gdmVuZG9yIGtlcm5lbCAoNC40KSB0aGlzIGlzIGRvbmUgc29tZWhvdyBidXQgdGhlIHNv
dXJjZXMgYXJlIHRvbyBkaWZmZXJlbnQgZm9yIG1lIHRvIGZpbmQKPj4+IG91dCBob3cuCj4+Pgo+
Pj4gR3J1w58sCj4+PiAtLSAKPj4+IE1hcmt1cyBSZWljaGwKPj4+Cj4+PiBbMV0KPj4+IGh0dHA6
Ly9kb3dubG9hZC50LWZpcmVmbHkuY29tL3Byb2R1Y3QvUkszMzk5L0RvY3MvSGFyZHdhcmUvJUU1
JThFJTlGJUU3JTkwJTg2JUU1JTlCJUJFJUU1JTkyJThDJUU4JUI0JUI0JUU3JTg5JTg3JUU1JTlC
JUJFL1JPQy1SSzMzOTktUEMvUk9DLTMzOTktUEMtVjEwLUEtMjAxODA4MDRfJUU1JThFJTlGJUU3
JTkwJTg2JUU1JTlCJUJFLnBkZgo+Pj4KPj4+IFsyXQo+Pj4gaHR0cHM6Ly9sa21sLm9yZy9sa21s
LzIwMTkvMTIvMTAvNTE3Cj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
