Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8B79B505
	for <lists+linux-rockchip@lfdr.de>; Fri, 23 Aug 2019 19:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUAm6RrXJ8Ag+A6gQ0JpYlBn6uVnl3UNE5G+AMFe3tg=; b=lETYrp3OF/JiUW
	CysvJtAC0NltTWCJoUkETleAXF9fRjbW41Pqe/r47+FkGVyLU4O/jcHLLAO8j18tYy/AYTJxyFa7g
	8vO61/u8myRnK/BRa0ZwOQMX72fGo4jjAKim1vpKrJi8GaJLctxYLycZmm0o0HBBQ1xK/MZvp5d4m
	XNxuOmbC4Sl3RPufJR+OMQdYmwmzB9gjtXT6RRRfOpX1LVCHTV9Ruq96H6x2SKv/oEcC+KAYuXAL2
	VoXV6liA4vyR2RyEoCbWkZ1GTV0uOVv7gHNUeJ2YCLnlG9isqUgJ2qLP0lBQJbyzXZXIOLowWAcsr
	YDLHlOnpHd5HhoWsgFNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CyC-0004sZ-4g; Fri, 23 Aug 2019 17:03:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Cy3-0004lc-Ev
 for linux-rockchip@lists.infradead.org; Fri, 23 Aug 2019 17:03:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id b24so6855750pfp.1
 for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2019 10:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=xzzMf3cNhyldWlrimtAsqo8fKrY0W548A06xyx+iH1E=;
 b=PaGcYhXzTdI92hXsXzYVTfXjnnhy2GyUs91u6zhR1/ou4HbRhbWUv4z6jLMmNzfPPG
 Sa12lmhBMC4XEYl9vY1Qa9fYyJZbPCDJj+wX0WLl1jd7pByMR7gW2wAZo/d+upbIBcPW
 RWwhFvvTdCh2tHaG9C9UyxQOrFSdMFfLdMbjirCu2egKCvSjmhd7X10ePHm8lL1ciMkP
 dlWiA/WkZmOzkR8VnTLfUjCPJP46M3xniQn7kEgcThBDlkvqr2ugX0yX0CENIW5U/rpO
 GDf1+MoLgtoMbAJg64SV/Sx2s2VYjmYeL7sPQniFO8HqNy3Ho15Q7LkPwkwAyBlTa05l
 fEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=xzzMf3cNhyldWlrimtAsqo8fKrY0W548A06xyx+iH1E=;
 b=Gg7ptivH7bnt2Y/H9OWhpjI3d6yIsNTBCubcGv9Od5PgP6GDic9oe2y4DfUjIhbHeJ
 SuHR0fVVmmWnBT6rzA2BeA9/fh9YoTo1jnRjtqJq5YUuf/iatZ0oC1Vh2zDRBrwqueWe
 I9kybo+kwkzFQLgMfh+OeizJ/kWGTK5r2GOt+aC+NZmcQewd/rA6jbtKSExFyF5qXbeQ
 b3yTaeEhMlKmW8bllTcs9C7ndss5VfG5+WdJzCkvVDsgTfBMGcCPVwpOnooW+OXKSsOt
 3Cj6SQ/BOZMiiVyJmKj+QL1nGvce0HrdFIjnXJ91+vEtscHeLl7nAfIGuqrgYYOWNbvC
 /4RQ==
X-Gm-Message-State: APjAAAV/ixHaDaGwx7ytPv5uQSbIuBRMDDk15IQQdCC9510L3q7fAExR
 a9jnadGqShcqBsvBxi8VL+1B7A==
X-Google-Smtp-Source: APXvYqxFd+POg93iuUyEhapgDp8fxNKrivCuW3o3cXew6gsbcWrNuE13xTPUDZV7qDkGFFMGnsL5vw==
X-Received: by 2002:a17:90a:f0c9:: with SMTP id
 fa9mr4466806pjb.137.1566579794113; 
 Fri, 23 Aug 2019 10:03:14 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
 by smtp.gmail.com with ESMTPSA id v22sm2395885pgk.69.2019.08.23.10.03.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 23 Aug 2019 10:03:13 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: CPUfreq fail on rk3399-firefly
In-Reply-To: <7hd0gvzuvw.fsf@baylibre.com>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk> <7hmugdynmk.fsf@baylibre.com>
 <2314814.WbdfqDVNqK@phil> <7hv9uq9wfe.fsf@baylibre.com>
 <c973d3fa-5f0d-c277-7c83-6227942a671a@rock-chips.com>
 <7hd0gvzuvw.fsf@baylibre.com>
Date: Fri, 23 Aug 2019 10:03:12 -0700
Message-ID: <7h8srjzuen.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_100315_506052_59AD9101 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-build-reports@lists.linaro.org, linux-rockchip@lists.infradead.org,
 linux-next@vger.kernel.org,
 =?utf-8?B?6Zer5a2d?= =?utf-8?B?5Yab?= <andy.yan@rock-chips.com>,
 =?utf-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

S2V2aW4gSGlsbWFuIDxraGlsbWFuQGJheWxpYnJlLmNvbT4gd3JpdGVzOgoKPiBLZXZlciBZYW5n
IDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPiB3cml0ZXM6Cj4KPj4gSGkgS2V2aW4sIEhlaWtv
LAo+Pgo+PiBPbiAyMDE5LzgvMjIg5LiK5Y2IMjo1OSwgS2V2aW4gSGlsbWFuIHdyb3RlOgo+Pj4g
SGkgSGVpa28sCj4+Pgo+Pj4gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVz
Ogo+Pj4KPj4+PiBBbSBEaWVuc3RhZywgMTMuIEF1Z3VzdCAyMDE5LCAxOTozNTozMSBDRVNUIHNj
aHJpZWIgS2V2aW4gSGlsbWFuOgo+Pj4+PiBbIHJlc2VudCB3aXRoIGNvcnJlY3QgYWRkciBmb3Ig
bGludXgtcm9ja2NoaXAgbGlzdCBdCj4+Pj4+Cj4+Pj4+IE1hcmsgQnJvd24gPGJyb29uaWVAa2Vy
bmVsLm9yZz4gd3JpdGVzOgo+Pj4+Pgo+Pj4+Pj4gT24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDQ6
Mjg6MDhBTSAtMDcwMCwga2VybmVsY2kub3JnIGJvdCB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBUb2Rh
eSdzIC1uZXh0IHN0YXJ0ZWQgZmFpbGluZyB0byBib290IGRlZmNvbmZpZyBvbiByazMzOTktZmly
ZWZseToKPj4+Pj4+Cj4+Pj4+Pj4gYXJtNjQ6Cj4+Pj4+Pj4gICAgICBkZWZjb25maWc6Cj4+Pj4+
Pj4gICAgICAgICAgZ2NjLTg6Cj4+Pj4+Pj4gICAgICAgICAgICAgIHJrMzM5OS1maXJlZmx5OiAx
IGZhaWxlZCBsYWIKPj4+Pj4+IEl0IGhpdHMgYSBCVUcoKSB0cnlpbmcgdG8gc2V0IHVwIGNwdWZy
ZXE6Cj4+Pj4+Pgo+Pj4+Pj4gWyAgIDg3LjM4MTYwNl0gY3B1ZnJlcTogY3B1ZnJlcV9vbmxpbmU6
IENQVTA6IFJ1bm5pbmcgYXQgdW5saXN0ZWQgZnJlcTogMjAwMDAwIEtIego+Pj4+Pj4gWyAgIDg3
LjM5MzI0NF0gY3B1ZnJlcTogY3B1ZnJlcV9vbmxpbmU6IENQVTA6IFVubGlzdGVkIGluaXRpYWwg
ZnJlcXVlbmN5IGNoYW5nZWQgdG86IDQwODAwMCBLSHoKPj4+Pj4+IFsgICA4Ny40Njk3NzddIGNw
dWZyZXE6IGNwdWZyZXFfb25saW5lOiBDUFU0OiBSdW5uaW5nIGF0IHVubGlzdGVkIGZyZXE6IDEy
MDAwIEtIego+Pj4+Pj4gWyAgIDg3LjQ4ODU5NV0gY3B1IGNwdTQ6IF9nZW5lcmljX3NldF9vcHBf
Y2xrX29ubHk6IGZhaWxlZCB0byBzZXQgY2xvY2sgcmF0ZTogLTIyCj4+Pj4+PiBbICAgODcuNDkx
ODgxXSBjcHVmcmVxOiBfX3RhcmdldF9pbmRleDogRmFpbGVkIHRvIGNoYW5nZSBjcHUgZnJlcXVl
bmN5OiAtMjIKPj4+Pj4+IFsgICA4Ny40OTUzMzVdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0t
LS0tLS0tLS0tLQo+Pj4+Pj4gWyAgIDg3LjQ5NjgyMV0ga2VybmVsIEJVRyBhdCBkcml2ZXJzL2Nw
dWZyZXEvY3B1ZnJlcS5jOjE0MzghCj4+Pj4+PiBbICAgODcuNDk4NDYyXSBJbnRlcm5hbCBlcnJv
cjogT29wcyAtIEJVRzogMCBbIzFdIFBSRUVNUFQgU01QCj4+Pj4+Pgo+Pj4+Pj4gSSdtIHN0cnVn
Z2xpbmcgdG8gc2VlIGFueXRoaW5nIHJlbGV2YW50IGluIHRoZSBkaWZmIGZyb20geWVzdGVyZGF5
LCB0aGUKPj4+Pj4+IHVubGlzdGVkIGZyZXF1ZW5jeSB3YXJuaW5ncyB3ZXJlIHRoZXJlIGluIHRo
ZSBsb2dzIHllc3RlcmRheSBidXQgbm8gb29wcwo+Pj4+Pj4gYW5kIEknbSBub3Qgc2VlaW5nIGFu
eSBjaGFuZ2VzIGluIGNwdWZyZXEsIGNsayBvciBhbnl0aGluZyByZWxldmFudAo+Pj4+Pj4gbG9v
a2luZy4KPj4+Pj4+Cj4+Pj4+PiBGdWxsIGJvb3Rsb2cgYW5kIG90aGVyIGluZm8gY2FuIGJlIGZv
dW5kIGhlcmU6Cj4+Pj4+Pgo+Pj4+Pj4gCWh0dHBzOi8va2VybmVsY2kub3JnL2Jvb3QvaWQvNWQz
MDJkODM1OWI1MTQ5OGQwNDllOTgzLwo+Pj4+PiBJIGNvbmZpcm0gdGhhdCBkaXNhYmxpbmcgQ1BV
ZnJlcSBpbiB0aGUgZGVmY29uZmlnIChDT05GSUdfQ1BVX0ZSRVE9bikKPj4+Pj4gbWFrZXMgdGhl
IGZpcmVmbHkgYm9hcmQgc3RhcnQgd29ya2luZyBhZ2Fpbi4KPj4+Pj4KPj4+Pj4gTm90ZSB0aGF0
IHRoZSBkZWZhdWx0IGRlZmNvbmZpZyBlbmFibGVzIHRoZSAicGVyZm9ybWFuY2UiIENQVWZyZXEK
Pj4+Pj4gZ292ZXJub3IgYXMgdGhlIGRlZmF1bHQgZ292ZXJub3IsIHNvIGR1cmluZyBrZXJuZWwg
Ym9vdCwgaXQgd2lsbCBhbHdheXMKPj4+Pj4gc3dpdGNoIHRvIHRoZSBtYXggZnJlcXVlbmN5Lgo+
Pj4+Pgo+Pj4+PiBGb3IgZnVuLCBJIHNldCB0aGUgZGVmYXVsdCBnb3Zlcm5vciB0byAidXNlcnNw
YWNlIiBzbyB0aGUga2VybmVsCj4+Pj4+IHdvdWxkbid0IG1ha2UgYW55IE9QUCBjaGFuZ2VzLCBh
bmQgdGhhdCBsZWFkcyB0byBhIHNsaWdodGx5IG1vcmUKPj4+Pj4gaW5mb3JtYXRpdmUgc3BsYXRb
MV0KPj4+Pj4KPj4+Pj4gVGhlcmUgaXMgc3RpbGwgYW4gT1BQIGNoYW5nZSBoYXBwZW5pbmcgYmVj
YXVzZSB0aGUgZGV0ZWN0ZWQgT1BQIGlzIG5vdAo+Pj4+PiBvbmUgdGhhdCdzIGxpc3RlZCBpbiB0
aGUgdGFibGUsIHNvIGl0IHRyaWVzIHRvIGNoYW5nZSB0byBhIGxpc3RlZCBPUFAKPj4+Pj4gYW5k
IGZhaWxzIGluIHRoZSBib3dlbHMgb2YgY2xrX3NldF9yYXRlKCkKPj4+PiBUaG91Z2ggSSB0aGlu
ayB0aGF0IG1pZ2h0IG9ubHkgYmUgYSBzeW1wdG9tIGFzIHdlbGwuCj4+Pj4gQm90aCB0aGUgUExM
IHNldHRpbmcgY29kZSBhcyB3ZWxsIGFzIHRoZSBhY3R1YWwgY3B1LWNsb2NrIGltcGxlbWVudGF0
aW9uCj4+Pj4gaXMgdW5jaGFuZ2VkIHNpbmNlIDIwMTcgKGFuZCBydW5zIGp1c3QgZmluZSBvbiBh
bGwgYm9hcmRzIGluIG15IGZhcm0pLgo+Pj4+Cj4+Pj4gT25lIHNvdXJjZSBmb3IgdGhlc2UgaXNz
dWVzIGlzIG9mdGVuIHRoZSByZWd1bGF0b3Igc3VwcGx5aW5nIHRoZSBjcHUKPj4+PiBnb2luZyBo
YXl3aXJlIC0gYWthIHRoZSB2b2x0YWdlIG5vdCBtYXRjaGluZyB0aGUgb3BwLgo+Pj4+Cj4+Pj4g
QXMgaW4gdGhpcyBlcnJvci1jYXNlIGl0J3MgQ1BVNCBiZWluZyBzZXQsIHRoaXMgd291bGQgbWVh
biBpdCBtaWdodAo+Pj4+IGJlIHRoZSBiaWcgY2x1c3RlciBzdXBwbGllZCBieSB0aGUgZXh0ZXJu
YWwgc3lyODI1IChmYW41MzU1IGNsb25lKQo+Pj4+IHRoYXQgbWlnaHQgYWN0IHVwLiBJbiB0aGUg
RmlyZWZseS1yazMzOTkgY2FzZSB0aGlzIGlzIGV2ZW4gc3RyYW5nZXIuCj4+Pj4KPj4+PiBUaGVy
ZSBpcyBhIGRpc2NyZXBhbmN5IGJldHdlZW4gdGhlICJmY3Msc3VzcGVuZC12b2x0YWdlLXNlbGVj
dG9yIgo+Pj4+IGJldHdlZW4gZGlmZmVyZW50IGJvb3Rsb2FkZXIgdmVyc2lvbnMgKGhvdyB0aGUg
c2VsZWN0aW9uLXBpbiBpcyBzZXQgdXApLAo+Pj4+IHNvIHRoZSBrZXJuZWwgbWlnaHQgYWN0dWFs
bHkgd3JpdGUgaGlzIHJlcXVlc3RlZCB2b2x0YWdlIHRvIHRoZSB3cm9uZwo+Pj4+IHJlZ2lzdGVy
IChub3QgdGhlIG9uZSBmb3IgYWN0dWFsIHZvbHRhZ2UsIGJ1dCB0aGUgc2Vjb25kIHNldCB1c2Vk
IGZvcgo+Pj4+IHRoZSBzdXNwZW5kIHZvbHRhZ2UpLgo+Pj4+Cj4+Pj4gRGlkIHlvdSBieSBjaGFu
Y2Ugc3dhcCBib290bG9hZGVycyBhdCBzb21lIHBvaW50IGluIHJlY2VudCBwYXN0Pwo+Pj4gTm8s
IGhhdmVuJ3QgdG91Y2hlZCBib290bG9hZGVyIHNpbmNlIEkgaW5pdGlhbGx5IHNldHVwIHRoZSBi
b2FyZC4KPj4KPj4gVGhlIENQVSB2b2x0YWdlIGRvZXMgbm90IGFmZmVjdCBieSBib290bG9hZGVy
IGZvciBrZXJuZWwgc2hvdWxkIGhhdmUgaXRzIAo+PiBvd24gb3BwLXRhYmxlLAo+Pgo+PiB0aGUg
Ym9vdGxvYWRlciBtYXkgb25seSBhZmZlY3QgdGhlIGNlbnRlci9sb2dpYyBwb3dlciBzdXBwbHku
Cj4+Cj4+Pgo+Pj4+IEknZCBhc3N1bWUgWzJdIG1pZ2h0IGFjdHVhbGx5IGJlIHRoZSBzYW1lIGlz
c3VlIGxhc3QgeWVhciwgdGhvdWdoCj4+Pj4gdGhlIENJLWxvZ3MgYXJlIG5vdCBhdmFpbGFibGUg
YW55bW9yZSBpdCBzZWVtcy4KPj4+Pgo+Pj4+IENvdWxkIHlvdSB0cnkgdG8gc2V0IHRoZSB2ZGRf
Y3B1X2IgcmVndWxhdG9yIHRvIGRpc2FibGVkLCBzbyB0aGF0Cj4+Pj4gY3B1ZnJlcSBmb3IgdGhp
cyBjbHVzdGVyIGRlZmVycyBhbmQgc2VlIHdoYXQgaGFwcGVucz8KPj4+IFllcywgdGhpcyBjaGFu
Z2VbMV0gZGVmaW5pdGVseSBtYWtlcyB0aGluZ3MgYm9vdCByZWxpYWJseSBhZ2Fpbiwgc28KPj4+
IHRoZXJlJ3MgZGVmaW50aWVseSBzb21ldGhpbmcgYSBiaXQgdW5zdGFibGUgd2l0aCB0aGlzIHJl
Z3VsYXRvciwgYXQKPj4+IGxlYXN0IG9uIHRoaXMgZmlyZWZseS4KPj4KPj4gSXMgaXQgcG9zc2li
bGUgdG8gdGFyZ2V0IHdoaWNoIHBhdGNoIGludHJvZHVjZSB0aGlzIGJ1Zz8gVGhpcyBib2FyZMKg
IAo+PiBzaG91bGQgaGF2ZSB3b3JrIGNvcnJlY3RseSBmb3IgYSBsb25nIHRpbWUgd2l0aCB1cHN0
cmVhbSBzb3VyY2UgY29kZS4KPgo+IFVuZm9ydHVuYXRlbHksIGl0IHNlZW1zIHRvIGJlIGEgcmVn
dWxhciwgYnV0IGludGVybWl0dGVudCBmYWlsdXJlLCBzbwo+IGJpc2VjdGlvbiBpcyBub3QgcHJv
ZHVjaW5nIGFueXRoaW5nIHJlbGlhYmxlLgo+Cj4gWW91IGNhbiBzZWUgdGhhdCBib3RoIGluIG1h
aW5saW5lWzFdIGFuZCBpbiBsaW51eC1uZXh0WzJdIHRoZXJlIGFyZQo+IHBlcmlvZGljIGZhaWx1
cmVzLCBidXQgaXQncyBoYXJkIHRvIHNlZSBhbnkgcGF0dGVybnMuCgpFdmVuIHdvcnNlLCBJIChy
ZSl0ZXN0ZWQgbWFpbmxpbmUgZm9yIHZlcnNpb25zIHRoYXQgd2VyZSBwcmV2aW91c2x5CnBhc3Np
bmcgKHY1LjIsIHY1LjMtcmM1KSBhbmQgdGhleSBhcmUgYWxzbyBmYWlsaW5nIG5vdy4KClRoZXkg
d29yayBhZ2FpbiBpZiBJIGRpc2FibGUgdGhhdCByZWd1bGF0b3IgYXMgc3VnZ2VzdGVkIGJ5IEhl
aWtvLgoKU28gdGhpcyBpcyBpbmNyZWFzaW5nbHkgcG9pbnRpbmcgdG8gZmFpbGluZyBoYXJkd2Fy
ZS4KCktldmluCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
