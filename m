Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E062718B370
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Mar 2020 13:29:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7Mv94kK+ucuAUVpQeI22JuGWUal51whtZ+MkwqWbja4=; b=K5hH2dIScz3Wt/Iunln1JC/q2
	Fwnvk1dWbXlR9cgg0Bm/Y9xEjEVwck7ZuAwGgdE1eS/f0AtDlPf8KSpfznESBY4igobarEV8UKoLk
	WJGyyykjXZUY3xmCgZtpa+qN+nC4V+z9j7+jsXw62dGh8DSInKszVuiw9LD8GwTbjQXgSsD0jb66C
	yXaJEWoOh5L6DCXDCjCQXcWVT4/Xkvwxy4/w69qasfIKm2MLlESIFdI1C1ecrX/l/4Jix8BWzaP1U
	O6WkCkIPszJ0rguU9Lk6MViTe4r0XsSeNcFlxjfxHNcTXU/qjKbbOsATfWWnBcuAI3YfHfYUN7fk5
	Sgk9/zOnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEuIO-00061I-SB; Thu, 19 Mar 2020 12:29:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEuIL-00060N-H4
 for linux-rockchip@lists.infradead.org; Thu, 19 Mar 2020 12:29:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E98E1FB;
 Thu, 19 Mar 2020 05:29:00 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 676733F305;
 Thu, 19 Mar 2020 05:28:59 -0700 (PDT)
Subject: =?UTF-8?Q?Re=3a_PROBLEM=3a_mmc=5fselect=5fhs400es_failed=2c_error_-?=
 =?UTF-8?B?MTEw44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtbW1jLW93bmVyQHZnZXIu?=
 =?UTF-8?B?a2VybmVsLm9yZ+S7o+WPkeOAkQ==?=
To: Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Milan_P=2e_Stani=c4=87?=
 <mps@arvanta.net>
References: <20200301220242.GA8276@arya.arvanta.net>
 <20200318214917.GA9112@arya.arvanta.net>
 <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <158bd6f5-2430-19bd-28ef-e18d67becaf3@arm.com>
Date: Thu, 19 Mar 2020 12:28:44 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_052905_658069_2141D538 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-mmc@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgU2hhd24sCgpPbiAyMDIwLTAzLTE5IDM6MTEgYW0sIFNoYXduIExpbiB3cm90ZToKPiBIaSBN
aWxhbgo+IAo+IFsrbGludXgtcm9ja2NoaXAgdG8gc2VlIGlmIHNvbWVvbmUgaGFzIGEgU2Ftc3Vu
ZyBjaHJvbWVib29rIG9uZSBwbHVzCj4gYW5kIGNvdWxkIGNvbmZpcm0gaWYgaXQgd29ya3NdCgpG
V0lXIEkndmUgYWxzbyB0cmllZCBzdXNwZW5kIG9uIG15IE5hbm9QQy1UNCBhbmQgc2VlbiB0aGF0
IHRoZSBlTU1DIAooYWxzbyBIUzQwMC1FUykgZmFpbHMgdG8gY29tZSBiYWNrIHByb3Blcmx5IG9u
IHJlc3VtZSAodGh1cyByZXN1bWUgbmV2ZXIgCmNvbXBsZXRlcyBkdWUgdG8gdGhlIG1pc3Npbmcg
cm9vdCBmaWxlc3lzdGVtKS4gSUlSQyBpdCBtaWdodCBldmVuIGhhdmUgCmJlZW4gcmVwcm9kdWNp
YmxlIHdpdGggc3VzcGVuZC10by1pZGxlLCBidXQgSSdkIGhhdmUgdG8gZG91YmxlLWNoZWNrIHRo
YXQuCgpSb2Jpbi4KCj4gT24gMjAyMC8zLzE5IDU6NDksIE1pbGFuIFAuIFN0YW5pxIcgd3JvdGU6
Cj4+IEhlbGxvLAo+Pgo+PiBTb3JyeSB0byBhbm5veSBhZ2FpbiwgYnV0IGNvdWxkIHlvdSB0ZWxs
IG1lIGlmIEkgc2VudCB0aGlzIGJ1ZyByZXBvcnQKPj4gdG8gcmlnaHQgbWFpbCBhZGRyZXNzIG9y
IEkgc2hvdWxkIHNlbmQgaXQgc29tZXdoZXJlIGVsc2UuCj4+Cj4+IEFsc28sIGRpZCBJIHNlbnQg
YnVnIHJlcG9ydCBjb3JyZWN0bHkgb3IgSSBkaWQgc29tZSBtaXN0YWtlcyB3aGljaAo+PiBjYXVz
ZWQgaXQgdG8gYmUgaWdub3JlZC4KPj4KPj4gLS0gVElBIE9uIFN1biwgMjAyMC0wMy0wMSBhdCAy
MzowMiwgTWlsYW4gUC4gU3RhbmnEhyB3cm90ZToKPj4+IEhlbGxvLAo+Pj4KPj4+IEknbSBub3Qg
bmF0aXZlIEVuZ2xpc2ggc3BlYWtlciBhbmQgSSdtIHNlbGYgdGF1Z2h0IGluIEVuZ2xpc2ggc28g
c29ycnkKPj4+IGlmIGRvIG5vdCB3cml0ZSBvciBleHByZXNzIGNvcnJlY3RseS4gQW5kIHNvcnJ5
IGlmIEkgcG9zdGVkIGJ1ZyByZXBvcnQKPj4+IHRvIHdyb25nIGFkZHJlc3MuCj4+Pgo+Pj4gSSdt
IHJ1bm5pbmcgbGludXggNS42LjAtcmMzIHdpdGhvdXQgYW55IHBhdGNoZXMgb24gU2Ftc3VuZyBj
aHJvbWVib29rCj4+PiBvbmUgcGx1cywgQXJtNjQgcm9ja2NoaXAgcmszMzk5IGJhc2VkIG1vZGVs
IG5hbWU6Cj4+PiBNYWNoaW5lIG1vZGVsOiBHb29nbGUgS2V2aW4KPj4+Cj4+PiBJIGJ1aWxkIGtl
cm5lbHMgZnJvbSB1cHN0cmVhbSBnaXQua2VybmVsLm9yZyBmb3IgdGhpcyBtYWNoaW5lIGZvciBz
b21lCj4+PiB0aW1lIChpaXJjLCBmcm9tIDUuMi4xIGFuZCB1cCkgYnV0IEknbSBnZXR0aW5nIGVy
cm9yIG1lc3NhZ2VzIGluIGtlcm5lbAo+Pj4gYWZ0ZXIgbWFjaGluZSByZXN1bWVzIGZyb20gc3Vz
cGVuZC10by1yYW0uCj4gCj4gSXQgc291bmRzIHRvIG1lIHN1c3BlbmQtdG8tcmFtIG5ldmVyIHdv
cmtzIGZvciB0aGlzIG1hY2hpbmUsIGF0IGxlYXN0Cj4gc2luY2UgNS4yLjEuIEFtIEkgcmlnaHQ/
Cj4gCj4+Pgo+Pj4gZXhjZXJwdCBmcm9tIGRtZXNnIG91dHB1dDoKPj4+IC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4+PiBSZXN0YXJ0aW5nIHRhc2tzIC4uLiBkb25lLgo+Pj4gUE06IHN1c3BlbmQgZXhpdAo+Pj4g
bW1jX2hvc3QgbW1jMDogQnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHogKHNsb3QgcmVxIDQw
MDAwMEh6LCAKPj4+IGFjdHVhbCA0MDAwMDBIWiBkaXYgPSAwKQo+Pj4gbW1jMTogbW1jX3NlbGVj
dF9oczQwMGVzIGZhaWxlZCwgZXJyb3IgLTExMAo+Pj4gbW1jMTogZXJyb3IgLTExMCBkb2luZyBy
dW50aW1lIHJlc3VtZQo+Pj4gbW1jMTogR290IGRhdGEgaW50ZXJydXB0IDB4MDAwMDAwMDIgZXZl
biB0aG91Z2ggbm8gZGF0YSBvcGVyYXRpb24gd2FzIAo+Pj4gaW4gcHJvZ3Jlc3MuCj4+PiBtbWMx
OiBzZGhjaTogPT09PT09PT09PT09IFNESENJIFJFR0lTVEVSIERVTVAgPT09PT09PT09PT0KPj4+
IG1tYzE6IHNkaGNpOiBTeXMgYWRkcjrCoCAweDAwMDAwMDA4IHwgVmVyc2lvbjrCoCAweDAwMDAx
MDAyCj4+PiBtbWMxOiBzZGhjaTogQmxrIHNpemU6wqAgMHgwMDAwNzIwMCB8IEJsayBjbnQ6wqAg
MHgwMDAwMDAwOAo+Pj4gbW1jMTogc2RoY2k6IEFyZ3VtZW50OsKgIDB4MDAwMDAwMDAgfCBUcm4g
bW9kZTogMHgwMDAwMDAyMwo+Pj4gbW1jMTogc2RoY2k6IFByZXNlbnQ6wqDCoCAweDFmZmYwMDAx
IHwgSG9zdCBjdGw6IDB4MDAwMDAwMzUKPj4+IG1tYzE6IHNkaGNpOiBQb3dlcjrCoMKgwqDCoCAw
eDAwMDAwMDBiIHwgQmxrIGdhcDrCoCAweDAwMDAwMDgwCj4+PiBtbWMxOiBzZGhjaTogV2FrZS11
cDrCoMKgIDB4MDAwMDAwMDAgfCBDbG9jazrCoMKgwqAgMHgwMDAwYmMwNwo+Pj4gbW1jMTogc2Ro
Y2k6IFRpbWVvdXQ6wqDCoCAweDAwMDAwMDBkIHwgSW50IHN0YXQ6IDB4MDAwMDAwMDAKPj4+IG1t
YzE6IHNkaGNpOiBJbnQgZW5hYjrCoCAweDAzZmYwMDBiIHwgU2lnIGVuYWI6IDB4MDNmZjAwMGIK
Pj4+IG1tYzE6IHNkaGNpOiBBQ21kIHN0YXQ6IDB4MDAwMDAwMDAgfCBTbG90IGludDogMHgwMDAw
MDAwMAo+Pj4gbW1jMTogc2RoY2k6IENhcHM6wqDCoMKgwqDCoCAweDQ0ZWRjODgwIHwgQ2Fwc18x
OsKgwqAgMHg4MDEwMjBmNwo+Pj4gbW1jMTogc2RoY2k6IENtZDrCoMKgwqDCoMKgwqAgMHgwMDAw
MGMxYSB8IE1heCBjdXJyOiAweDAwMDAwMDAwCj4+PiBtbWMxOiBzZGhjaTogUmVzcFswXTrCoMKg
IDB4MDAwMDAwMDAgfCBSZXNwWzFdOsKgIDB4MzczMzAwYmQKPj4+IG1tYzE6IHNkaGNpOiBSZXNw
WzJdOsKgwqAgMHgzNTMwMzAzMCB8IFJlc3BbM106wqAgMHgwMDAwMDAwMAo+Pj4gbW1jMTogc2Ro
Y2k6IEhvc3QgY3RsMjogMHgwMDAwMDAwMAo+Pj4gbW1jMTogc2RoY2k6IEFETUEgRXJyOsKgIDB4
MDAwMDAwMDAgfCBBRE1BIFB0cjogMHhlZDQxZTIwMAo+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+Cj4+
PiBJIGludm9rZSBzdXNwZW5kLXRvLXJhbSBieSBgZWNobyBtZW0gPiAvc3lzL3Bvd2VyL3N0YXRl
YCBmcm9tIEFDUEkgcG93ZXIKPj4+IGFuZCBMSUQgYnV0dG9uIGhhbmRsZXJzLgo+Pj4KPj4+IFRo
aXMgb25seSBoYXBwZW5zIHdoZW4gSSBib290IGFuZCB1c2UgaW50ZXJuYWwgZW1tYyBjYXJkIGFu
ZCBuZXZlciB3aGVuCj4+PiBib290IGFuZCB1c2UgZXh0ZXJuYWwgbW1jIGNhcmQuCj4+Pgo+Pj4g
SWYgc3VzcGVuZC10by1yYW0gaXMgbm90IGludm9rZWQgKG1hY2hpbmUgaXMgYWx3YXlzIGluIG5v
cm1hbCBzdGF0ZSkKPj4+IHRoaXMgcHJvYmxlbSBuZXZlciBoYXBwZW4gKG9yIEkgbWlzc2VkIGl0
IHNvbWVob3cpLgo+Pj4KPj4+IEknbSBhdHRhY2hpbmcga2VybmVsIC5jb25maWcgKGZpbGUgY29u
ZmlnLTUuNi4wLXJjMy0xLWdydS5jb25mKSB3aGljaAo+Pj4gdXNlIHRvIGJ1aWxkIGtlcm5lbCwg
b3V0cHV0IG9mIHRoZSBgYXdrIC1mIHNjcmlwdHMvdmVyX2xpbnV4YCBhcyBmaWxlCj4+PiB2ZXJf
bGludXgudHh0IGFuZMKgIG91dHB1dCBvZiBkbWVzZyBhcyBmaWxlIG1tYy1lcnIudHh0IChmcm9t
IHdoaWNoIEkKPj4+IGRlbGV0ZWQgd2lmaSBjb25uZWN0aW9uIGxvZ3MpLgo+Pj4KPj4+IFNvcnJ5
IGlmIEkgZGlkIHNvbWV0aGluZyBiYWQgb3Igd3Jvbmcgd2l0aCB0aGlzIGJ1ZyByZXBvcnQsIEkg
ZG9uJ3QgaGF2ZQo+Pj4gbXVjaCBleHBlcmllbmNlIHdpdGggYnVnIHJlcG9ydGluZywgZXNwZWNp
YWxseSBmb3Iga2VybmVsLgo+Pj4KPj4+IEknbSByZWFkeSB0byBzZW5kIHlvdSBtb3JlIGRhdGEs
IGFuZCBpbnZlc3RpZ2F0ZSB0aGlzIG1vcmUsIGFwcGx5Cj4+PiBwYXRjaGVzIGFuZCByZWJ1aWxk
IGtlcm5lbCBvciB3aGF0ZXZlciB5b3UgYXNrIG1lIChvZiBjb3Vyc2UgaWYgbXkKPj4+IHVuZGVy
c3RhbmRpbmcgYW5kIGtub3dsZWRnZSBpcyBlbm91Z2ggZm9yIHRoaXMgam9iKS4KPj4+Cj4+PiBU
aGFuayBpbiBhZHZhbmNlCj4+Pgo+Pj4gLS0gCj4+PiBLaW5kIHJlZ2FyZHMKPj4+Cj4+IFsuLi5d
Cj4+Cj4+Cj4gCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
