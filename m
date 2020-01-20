Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242BE143331
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 Jan 2020 22:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXHYsaHw/I9cr6ecYN9badbk7qdXnLI7/oS57YzO9Gk=; b=K9eSGeb3juZ3tC
	cQ3qh0AbU/hyDQDCBiZ+l9BkFQy/GBw3Yt1SdPhJTcnL6Rs7J8kRelCa3sMts/mgYlUErvrr7xJN+
	buu1J/Xye4ttKovd//19ICi3SJlJ9O2oU6ORIB6gnQFyE1oOaSg7tF4Fn1bDDSkGBk279c8QzRNNf
	MIC3w59MFAs2Lz63cnojGWMGLj7USMz6kVfe0+Rg0YwJcZJK91FQjg6wNpsEyra1aBjbLIDJM4XfC
	29ILns3jgW6qysGAG+aLvcDtm7U/bjdq082Is2HxueU3Rb4D7qUyEkbBt2cQlaRMaBbQbGYj56T6Q
	m5BJv8PsWx1NddeWt4fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iteC2-0004U2-6T; Mon, 20 Jan 2020 21:02:42 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iteBu-0004Sq-KB
 for linux-rockchip@lists.infradead.org; Mon, 20 Jan 2020 21:02:40 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iteBq-0001ch-FN; Mon, 20 Jan 2020 22:02:30 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89C03.dip0.t-ipconnect.de
 [217.232.156.3]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 00KL2SSg007612
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Mon, 20 Jan 2020 22:02:28 +0100
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
To: Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
 <20200120115828.GC32175@kuha.fi.intel.com>
 <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
 <546a5723-a974-ed0a-93e3-b46c919b0f7e@fivetechno.de>
 <2e739a08-191b-d7c9-1273-4000cbbca423@roeck-us.net>
 <d985890e-f1a4-a9b4-8f08-1860ea4486f7@fivetechno.de>
 <d3c847f7-2c8a-3cc0-00db-f46668fd83ca@roeck-us.net>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <9d4b25e4-0b88-bf3d-7265-e43026325e2d@fivetechno.de>
Date: Mon, 20 Jan 2020 22:02:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <d3c847f7-2c8a-3cc0-00db-f46668fd83ca@roeck-us.net>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1579554154;
 d023c251; 
X-HE-SMSGID: 1iteBq-0001ch-FN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_130234_811416_60F0BF27 
X-CRM114-Status: GOOD (  22.22  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgR3VlbnRlciwKCkFtIDIwLjAxLjIwIHVtIDIxOjI2IHNjaHJpZWIgR3VlbnRlciBSb2VjazoK
PiBPbiAxLzIwLzIwIDEyOjE0IFBNLCBNYXJrdXMgUmVpY2hsIHdyb3RlOgo+PiBIaSBHdWVudGVy
LAo+Pgo+PiBBbSAyMC4wMS4yMCB1bSAxNzowNCBzY2hyaWViIEd1ZW50ZXIgUm9lY2s6Cj4+PiBP
biAxLzIwLzIwIDY6MzQgQU0sIE1hcmt1cyBSZWljaGwgd3JvdGU6Cj4+Pj4gSGkgR3VlbnRlciwK
Pj4+Pgo+Pj4+IEFtIDIwLjAxLjIwIHVtIDE1OjIxIHNjaHJpZWIgR3VlbnRlciBSb2VjazoKPj4+
Pj4gT24gMS8yMC8yMCAzOjU4IEFNLCBIZWlra2kgS3JvZ2VydXMgd3JvdGU6Cj4+Pj4+PiBIaSBN
YXJrdXMsCj4+Pj4+Pgo+Pj4+Pj4gT24gVGh1LCBKYW4gMDksIDIwMjAgYXQgMDU6Mjk6MDdQTSAr
MDEwMCwgTWFya3VzIFJlaWNobCB3cm90ZToKPj4+Pj4+PiBIaSwKPj4+Pj4+Pgo+Pj4+Pj4+IEkn
bSB3b3JraW5nIHdpdGggYSBST0MtUkszMzk5LVBDIGFybTY0IGJvYXJkIGZyb20gZmlyZWZseSwg
Y2lyY3VpdCBzaGVldCBbMV0uCj4+Pj4+Pj4gVGhlIGJvYXJkIGlzIHBvd2VyZWQgZnJvbSBhbiBV
U0ItQyB0eXBlIGNvbm5lY3RvciB2aWEgYW4gRlVTQjMwMiBQRCBjb250cm9sbGVyLgo+Pj4+Pj4+
IFdpdGggbWVhc3VyZWQgMTVXKyBwb3dlciBjb25zdW1wdGlvbiBpdCBzaG91bGQgdXNlIGhpZ2hl
ciB2b2x0YWdlIFBEIG1vZGVzIHRoYW4KPj4+Pj4+PiB0aGUgc3RhbmRhcmQgNVYgVVNCLUMgbW9k
ZS4KPj4+Pj4+Pgo+Pj4+Pj4+IFdoZW4gSSBhZGQgdGhlIHJlbGF0ZWQgY29ubmVjdG9yIG5vZGUg
aW4gRFRTIFsyXSB0aGUgRlVTQjMwMiBpbml0aWFsaXplcwo+Pj4+Pj4+IHRoZSByaWdodCBQRCBt
b2RlIChlLmcuIDE1Vi8zQSkuCj4+Pj4+Pj4KPj4+Pj4+PiBCdXQgZHVyaW5nIGluaXRpYWxpc2F0
aW9uIHRoZSBQRCBpcyBzd2l0Y2hlZCBvZmYgc2hvcnRseSBhbmQgdGhlIGJvYXJkIGhhcyBhIGJs
YWNrb3V0Lgo+Pj4+Pj4+IFdoZW4gSSBpbmplY3QgYSBiYWNrdXAgc3VwcGx5IHZvbHRhZ2UgYmVo
aW5kIHRoZSBGVVNCMzAyIChlLmcuIGF0IFNZU18xMlYgbGluZSkgZHVyaW5nIGJvb3QKPj4+Pj4+
PiBJIGNhbiByZW1vdmUgdGhlIGJhY2t1cCBhZnRlciBzdWNjZXNmdWxsIHNldHRpbmcgdXAgdGhl
IFBEIGFuZCB0aGUgYm9hcmQgd2lsbCBydW4gZmluZS4KPj4+Pj4+Pgo+Pj4+Pj4+IElzIGl0IHBv
c3NpYmxlIHRvIGNoYW5nZSB0aGUgYmVoYXZpb3VyIG9mIHRoZSBmdXNiMzAyIGRyaXZlciB0byBu
b3QgcG93ZXIgZG93biB0aGUgUEQgc3VwcGx5Cj4+Pj4+Pj4gZHVyaW5nIGluaXQ/Cj4+Pj4+Pgo+
Pj4+Pj4gSSBndWVzcyBpdCdzIGFsc28gcG9zc2libGUgdGhhdCB0aGUgcHJvYmxlbSBpcyB3aXRo
IHRjcG0uYyBpbnN0ZWFkIG9mCj4+Pj4+PiBmdXNiMzAyLmMuIHRjcG0uYyBwcm92aWRlcyB0aGUg
VVNCIFBEIHN0YXRlIG1hdGNoaW5lcy4gR3VlbnRlciEgQ2FuCj4+Pj4+PiB5b3UgdGFrZSBhIGxv
b2sgYXQgdGhpcz8KPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFRoZXJlIHdhcyBhbHdheXMgYSBwcm9ibGVt
IHdpdGggaGFuZG9mZiBmcm9tIHRoZSBib290bG9hZGVyLiB0Y3BtX2luaXQoKSBjYWxscwo+Pj4+
PiB0Y3BtX3Jlc2V0X3BvcnQoKSB3aGljaCB0dXJucyB2YnVzIGFuZCB2Y29ubiBvZmYsIHdoaWNo
IEkgaW1hZ2luZSBjYW4KPj4+Pj4gdHJpZ2dlciB0aGUgc2l0dWF0aW9uLgo+Pj4+Pgo+Pj4+PiBV
bmZvcnR1bmF0ZWx5IEkgd2FzIG5ldmVyIGFibGUgdG8gc29sdmUgdGhlIHB1enpsZS4gVGhlIFR5
cGUtQyBwcm90b2NvbCBkb2VzCj4+Pj4+IG5vdCBzdXBwb3J0IGFueSBraW5kIG9mICJoYW5kLW9m
ZiIgZnJvbSBvbmUgY29tcG9uZW50IGluIHRoZSBzeXN0ZW0gdG8gYW5vdGhlci4KPj4+Pj4gSWYg
dGhlIHN0YXRlIG1hY2hpbmUgZG9lc24ndCBzdGFydCBmcm9tIGEgY2xlYW4gc3RhdGUsIHRoZXJl
IGlzIHByZXR0eQo+Pj4+PiBtdWNoIG5vIGd1YXJhbnRlZSB0aGF0IGl0IGV2ZXIgc3luY2hyb25p
emVzLgo+Pj4+Pgo+Pj4+PiBNYXliZSBzb21lb25lIGNhbiBmaW5kIGEgYmV0dGVyIHNvbHV0aW9u
LCBidXQgd2hlbiBJIHdyb3RlIHRoZSBjb2RlIEkganVzdAo+Pj4+PiBjb3VsZCBub3QgZ2V0IGl0
IHRvIHdvcmsgcmVsaWFibHkgd2l0aG91dCByZXNldHRpbmcgZXZlcnl0aGluZyBkdXJpbmcKPj4+
Pj4gcmVnaXN0cmF0aW9uLgo+Pj4+Pgo+Pj4+PiBOb3RlIHRoYXQgdjQuNCBkaWQgbm90IGluY2x1
ZGUgdGhlIHVwc3RyZWFtIHRjcG0gY29kZSwgc3VnZ2VzdGluZyB0aGUKPj4+Pj4gY29kZSBpbiB0
aGUgdmVuZG9yIGtlcm5lbCB3YXMgcG9zc2libHkgdXNpbmcgYSBkaWZmZXJlbnQgb3IgYmFja3Bv
cnRlZAo+Pj4+PiBzdGF0ZSBtYWNoaW5lLiBJbXBvc3NpYmxlIHRvIHNheSB3aGF0IHdhcyBkb25l
IHRoZXJlIHdpdGhvdXQgYWNjZXNzCj4+Pj4+IHRvIHRoZSBjb2RlLgo+Pj4+Cj4+Pj4gVGhlIHZl
bmRvciBjb2RlIGZvciBmdXNiMzAyIGlzIGhlcmU6Cj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL0Zp
cmVmbHlUZWFtL2tlcm5lbC90cmVlL3JrMzM5OS9maXJlZmx5L2RyaXZlcnMvbWZkCj4+Pj4KPj4+
Cj4+PiBBRkFJQ1MgdGhlIHZlbmRvciBjb2RlIGRvbid0IHJlc2V0IFZCVVMsIGFuZCBzZWxlY3Rp
dmVseSAob25seSkgcmVzZXRzIHRoZQo+Pj4gUEQgc3RhdGUgbWFjaGluZSBpbiB0aGUgZnVzYjMw
MiBvbiBzdGFydHVwLiBUaGUgdGNwbSBzdGF0ZSBtYWNoaW5lIGlzIGVtYmVkZGVkCj4+PiBpbiB0
aGUgZnVzYjMwMiBkcml2ZXIsIG1ha2luZyB0aGlzIGVhc2llciB0byBjb250cm9sLgo+Pj4KPj4+
IFRoZSBmdXNiMzAyIExpbnV4IGtlcm5lbCBkcml2ZXIsIG9uIHRoZSBvdGhlciBzaWRlLCByZXNl
dHMgdGhlIGVudGlyZSBmdXNiMzAyCj4+PiBvbiBpbml0aWFsaXphdGlvbiwgbm90IGp1c3QgUEQg
KGJpdCAwIG9mIHRoZSByZXNldCByZWdpc3RlcikuIFF1ZXN0aW9uIGlzIGlmCj4+PiB0aGF0IGNh
biBiZSBjaGFuZ2VkIHRvIGp1c3QgcmVzZXQgUEQgKGJpdCAxIG9mIHRoZSByZXNldCByZWdpc3Rl
cikuCj4+PiBNYXliZSB0aGF0IHdvdWxkIGFscmVhZHkgZml4IHRoZSBwcm9ibGVtLiBDYW4geW91
IGdpdmUgaXQgYSB0cnkgPwo+Pj4KPj4+IEd1ZW50ZXIKPj4KPj4gSSB0cmllZAo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy91c2IvdHlwZWMvdGNwbS9mdXNiMzAyLmMgYi9kcml2ZXJzL3VzYi90
eXBlYy90Y3BtL2Z1c2IzMDIuYwo+PiBpbmRleCBlZDg2NTVjNmFmOGMuLjZlMTVlN2IyMjA2NCAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy91c2IvdHlwZWMvdGNwbS9mdXNiMzAyLmMKPj4gKysrIGIv
ZHJpdmVycy91c2IvdHlwZWMvdGNwbS9mdXNiMzAyLmMKPj4gQEAgLTMzNCwxMSArMzM0LDExIEBA
IHN0YXRpYyBpbnQgZnVzYjMwMl9zd19yZXNldChzdHJ1Y3QgZnVzYjMwMl9jaGlwICpjaGlwKQo+
PiDCoMKgwqDCoMKgwqDCoMKgIGludCByZXQgPSAwOwo+PiDCoCDCoMKgwqDCoMKgwqDCoMKgIHJl
dCA9IGZ1c2IzMDJfaTJjX3dyaXRlKGNoaXAsIEZVU0JfUkVHX1JFU0VULAo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZVU0Jf
UkVHX1JFU0VUX1NXX1JFU0VUKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBGVVNCX1JFR19SRVNFVF9QRF9SRVNFVCk7Cj4+
IMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCA8IDApCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGZ1c2IzMDJfbG9nKGNoaXAsICJjYW5ub3Qgc3cgcmVzZXQgdGhlIGNoaXAsIHJldD0l
ZCIsIHJldCk7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGZ1c2IzMDJfbG9nKGNo
aXAsICJjYW5ub3QgcGQgcmVzZXQgdGhlIGNoaXAsIHJldD0lZCIsIHJldCk7Cj4+IMKgwqDCoMKg
wqDCoMKgwqAgZWxzZQo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmdXNiMzAyX2xv
ZyhjaGlwLCAic3cgcmVzZXQiKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnVz
YjMwMl9sb2coY2hpcCwgInBkIHJlc2V0Iik7Cj4+IMKgIMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IHJldDsKPj4gwqAgfQo+Pgo+PiBidXQgZGlkIG5vdCBoZWxwLCBhZnRlciBtbWMgYW5kIGVoY2kg
aW5pdGlhbGl6aW5nIHRoZSBQRC1zdXBwbHkgZ2V0cyBzd2l0Y2hlZCBvZmYgYXQgMS45NXMuCj4g
Cj4gTmV4dCBzdGVwIHRvIHRyeSB3b3VsZCBiZSB0byBza2lwIHZidXMgaW5pdGlhbGl6YXRpb24g
LSBkcm9wIHRjcG1faW5pdF92YnVzKCkKPiBmcm9tIHRjcG1fcmVzZXRfcG9ydCgpLiBDYW4geW91
IGRvIHRoYXQgYXMgd2VsbCA/CmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3Rj
cG0uYyBiL2RyaXZlcnMvdXNiL3R5cGVjL3RjcG0vdGNwbS5jCmluZGV4IGYzMDg3ZWY4MjY1Yy4u
ZGIyYTc1ZDY3YmM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0uYwor
KysgYi9kcml2ZXJzL3VzYi90eXBlYy90Y3BtL3RjcG0uYwpAQCAtMjY5OCw3ICsyNjk4LDcgQEAg
c3RhdGljIHZvaWQgdGNwbV9yZXNldF9wb3J0KHN0cnVjdCB0Y3BtX3BvcnQgKnBvcnQpCiAgICAg
ICAgcG9ydC0+cnhfbXNnaWQgPSAtMTsKIAogICAgICAgIHBvcnQtPnRjcGMtPnNldF9wZF9yeChw
b3J0LT50Y3BjLCBmYWxzZSk7Ci0gICAgICAgdGNwbV9pbml0X3ZidXMocG9ydCk7ICAgLyogYWxz
byBkaXNhYmxlcyBjaGFyZ2luZyAqLworLy8gICAgIHRjcG1faW5pdF92YnVzKHBvcnQpOyAgIC8q
IGFsc28gZGlzYWJsZXMgY2hhcmdpbmcgKi8KICAgICAgICB0Y3BtX2luaXRfdmNvbm4ocG9ydCk7
CiAgICAgICAgdGNwbV9zZXRfY3VycmVudF9saW1pdChwb3J0LCAwLCAwKTsKICAgICAgICB0Y3Bt
X3NldF9wb2xhcml0eShwb3J0LCBUWVBFQ19QT0xBUklUWV9DQzEpOwoKRGlkIG5vdCBoZWxwLCBi
dXQgaW5zdGVhZCBvZiBzd2l0Y2hpbmcgb2ZmLCByZWJvb3RzIG5vdyBtb3N0IG9mIHRoZSB0aW1l
LgpJIHdhdGNoIHdpdGggYW4gVVNCLUMtUG93ZXIgbWV0ZXIgKFYgYW5kIEEpLgo+IAo+IFRoYW5r
cywKPiBHdWVudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
