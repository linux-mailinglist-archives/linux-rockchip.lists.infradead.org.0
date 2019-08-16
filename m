Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19C1907F2
	for <lists+linux-rockchip@lfdr.de>; Fri, 16 Aug 2019 20:55:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRYESVUpfH4HjHHHRH2EvIx5Wrme6UFhqRx9UN3NZcE=; b=PsyW+/Syl0Vo2m
	cXjXAw1P72h5EeOgoWWDYFemLr3ZWlOvOswbQ6KSdiiYh3B04nqT6X0bEnHj3WMVB2tSd9D3zoNP5
	eifh4QeGIZV2wNn8POj1iTRMMbFQtN1Fbylb+PC6aJGbEzEZSwMQU4TL8hklvHR4KW7Yj1sv7/5Ya
	E9fjWfeSP/+JVDHus8jTw6MmJgB9VZESpqhaDmOOHNMCvUAU+CxPD8HEmNchK2meMJedCI8sYWDaA
	2vAKNxPG7RSjO1mPoTPj4XkX64QqE1EOMijtzA/75ELdR6VUObH3CgLQbhFyOWJWF7kn6DvZsV/IX
	3zTB/x8gvD0sXmk0ld/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyhNI-00022t-KH; Fri, 16 Aug 2019 18:54:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyhNE-00022Q-Mo; Fri, 16 Aug 2019 18:54:54 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so2471308wrr.5;
 Fri, 16 Aug 2019 11:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZIcOtpmkAyPPF8IZ2E+RCqFijSBHEZNdbSz2WgCDe9w=;
 b=WyCCG07kH7AyHuxzQWuoS7suYHpK9YwqDGluSw6JlcsyLyRlB7esZjQMSvWEs74bkX
 bQ9B5idWQaBmJ3hHIMAKiXtom3/+sPMMPbxgjBF6S9OMcBuXnKA93gEe6Y0yYxWURs0Q
 36yVEX0aJsoeyOIFeb3HfZnYbWLdlHP2y7xSpXyhVeL4jBi89EO2bmT+s/AvS32oRlfT
 ujuhAt1in/jXF/eo6bGETDCQBF3VgOflFJrXK6ZCq8hEL00pdoMAFJgGjDbIHMtSR/RO
 RoeCgnerpVtV9l8Az+Ck9wP2M8qbexPV89AjZGWSNNTq5VvOGB3DPJ2ilM2EQirXwMdt
 7GWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZIcOtpmkAyPPF8IZ2E+RCqFijSBHEZNdbSz2WgCDe9w=;
 b=X0Z6B6iFpnfxiubh/12jRmXqBjmHGYQy1RSU8LrfuI0IFJcD5CJ03/j1SoGROAH5pG
 lEKPFgDuo9ssOj7O/pXqVTV116749s1XwIj1sl4JY16jMK+mkdXeBMbibrNsDcMx34O1
 A9TIx68o1rwE0KZFt1TAYp78VwNiIs96yl1YZOG7dsGJzLZ1SqiUscsgWJJW9/htRuuk
 grVJ33AO7SvrLwj1HuYJM3TittJweOYwS5B6n2AXJ34dr5BluXCcgx/4NUZwt9byY7Qv
 QeUteEPSBabR6IcbX1b9hX2pRO6nsIyj7FmaEqD1boLZdSIatdSDGorHzEc4OVkqJhyp
 UXGQ==
X-Gm-Message-State: APjAAAXl7XiuzXl1ZRrD0bo25hYrDy1phOPzTy/gXBiPhX/iGUfRDpU/
 2y980QTtNs2a0y5FLCFeXdaQQB1+fpZVQLWfGo11s/oJlhs=
X-Google-Smtp-Source: APXvYqyjAhdDi1tKcJ2RugtQNKn3XhAwEUccYsGTAVC+7iD01E6qYqknGw+0AUCSrKtSR46yZIvKiSkYsGSD9UM8ddI=
X-Received: by 2002:adf:eac3:: with SMTP id o3mr11583482wrn.264.1565981687262; 
 Fri, 16 Aug 2019 11:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
In-Reply-To: <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
From: Philipp Richter <richterphilipp.pops@gmail.com>
Date: Fri, 16 Aug 2019 20:54:36 +0200
Message-ID: <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_115452_747599_983B3D59 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richterphilipp.pops[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: heiko@sntech.de, catalin.marinas@arm.com, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org, andre.przywara@arm.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCAxNiBBdWcgMjAxOSBhdCAxNDowMSwgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIGRvZXMgc3RhcnQgdG8gc21lbGwgbGlrZSBzb21lIGlz
c3VlIHdpdGggdGhhdCBwYXJ0aWN1bGFyIGFyZWEgb2YKPiBwaHlzaWNhbCBtZW1vcnkgLSBlaXRo
ZXIgYmVjYXVzZSBpdCdzIGJlZW4gbWFya2VkIGFzIFNlY3VyZS1vbmx5IGJ5Cj4gZmlybXdhcmUg
YW5kIHRoZSBjb250cm9sbGVyIGNvbmZpZ3VyZWQgdG8gYWJvcnQgTm9uLVNlY3VyZSBhY2Nlc3Nl
cywgb3IKPiBwb3NzaWJseSBiZWNhdXNlIG9mIGFuIGFjdHVhbCBEUkFNIGZhaWx1cmUuIFRoZSBu
ZXh0IHRoaW5nIEknZCBkbyBpcwo+IGhhdmUgYSBwbGF5IGFyb3VuZCB3aXRoIHRoZSAibWVtdGVz
dD0uLi4iIGtlcm5lbCBwYXJhbWV0ZXIgdG8gc2VlIGlmCj4gdGhhdCBjYW4gY29uc2lzdGVudGx5
IGZpbmQgYSBwcm9ibGVtLCBhbmQgc2VlIGlmIHRoZSBmaXJtd2FyZSBjaGFuZ2UKPiB0aGF0IEhl
aWtvIHBvaW50ZWQgb3V0IG1ha2VzIGFueSBkaWZmZXJlbmNlLgo+Cj4gUm9iaW4uCgpUaGFuayB5
b3UgdmVyeSBtdWNoIGZvciB0aGlzIGluc2lnaHQuCgpJIGNvbXBpbGVkIHUtYm9vdCB3aXRoIHRo
ZSBwYXRjaCB0aGF0IEhlaWtvIFN0w7xibmVyIGxpbmtlZCB0byBhbmQKcmV3cm90ZSB0aGUgaW1h
Z2VzIHRvIHRoZSB0YXJnZXQgbG9jYXRpb25zIGJ1dCB0aGlzIGRpZG4ndCByZXNvbHZlIHRoZQpw
cm9ibGVtLgpJJ2xsIHRyeSBzb21lIG1lbXRlc3RzIGJ1dCB0aGUgc3RvY2sgQXJjaGxpbnV4IEFS
TSBrZXJuZWwgZG9lcyBub3QKaGF2ZSBpdCBlbmFibGVkIHNvIEknbGwgbmVlZCB0byBjb21waWxl
IGl0IGluIG15c2VsZiB0aGVuIEkgZ3Vlc3MuCgpSZWdhcmRzLApQaGlsaXBwIFJpY2h0ZXIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
