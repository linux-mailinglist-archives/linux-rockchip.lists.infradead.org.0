Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1CD182183
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 20:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjw4VliNnME3/V9/wygCwQEVm7wwFx8Ld1n1raprMkQ=; b=UxV+BWI9VhKcbl
	GRrv0PYo5KA8PYSehgTnwArmBzaj6oxS6TsRAVZKxKI+glyT+QYYZrJX7RbhSRyUJelYnDWgLjYJK
	eb+c9Y/CLes2o9vOpXn/xn4uE8nnHoIQ6H82amKbooBz/L2yS0MLSorsKa7rAlHlUT/k3mxJSTeB6
	2ZyAy+kXpW6Ec0AIvN8GDe4/BTgoLGV+B1obhUzmV/rFtWaUR7eKZ1VshQaszVWftYv5VpmBtdfbv
	Ss6w3+U14qwQPPtkv3Dr4PZX5wCUy5kNpx43klpCuls8Af0WANJKGkUmZiKrk0FAdTdm4AmDlHn2P
	+G9fLUCOve+RzO4eV3gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6fy-0008Il-6R; Wed, 11 Mar 2020 19:05:54 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6fu-0008Hv-Mz
 for linux-rockchip@lists.infradead.org; Wed, 11 Mar 2020 19:05:51 +0000
Received: by mail-qk1-x741.google.com with SMTP id q18so3174869qki.10
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2020 12:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=b3Cgy29Dqf3TWGwP4FeGEObg2LE3ugs0svlpIKXT5us=;
 b=evlE+ihydYjvf1CAzYyc/cSmxxZTJf+v9vTFOJSzv2Aj22RAqC1XIPri4QkoIaA7Rg
 YWH1rx5+g5h3hW45C5qCh7qB3r9L9xrZaF8yAiO3IOF3z/p0aQBYEjgAjUuLkxmUPbWb
 T6oh7sa0WwsHJtffQYyRQpDoHyQaWIITdaprkiJOUURxo0SN9dT7/GF75CDPOm9tlfvx
 VghETFrGNVya0yqpgHHJCvYDHbnCHDali4+2/V/y2SCL9qWqxoLruOjJr8+fVh/yV30p
 JDfOphA9lXyQf/VOGOG7LyJFGDfl66AAM7JE1gWyliuSIDI6zR3Obh+y4dMGTwGkcXvC
 5s/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=b3Cgy29Dqf3TWGwP4FeGEObg2LE3ugs0svlpIKXT5us=;
 b=ApujYAsvLxBS2+zmjjgLU33vEjQS3xEu1N68JUTL+qVx8Ny5UBTnftuYpZle1KxTvl
 miSMpTnfQyKaIgmAne67QnSBbqAla948iDAtuovKmEWc/CDwa2wQrQuVEip/yHpjLUmm
 wE3RZg64VWFeKSCBCUZbsceKsMa5r74CuN29Na/cSokf7FdW9cWfyN4fPksBYSr2fhWs
 NnjLwCix4Al2i1++tOqYyQfbNro+gkKp4pmSZVUqd2GyS/r35Hf+U+eLpDu0D2FebJIu
 l7WCCdepfL+muBCFT+zJVRLOEwbNf14ch4aolEdxLkLN/PuxIqI9Fi8UzeAT9X6qC5W5
 bqUg==
X-Gm-Message-State: ANhLgQ2YTAzcnNqmzLx3Xw7kg24pEhpzEGUYnL334bOXfDOR0I19TG8+
 K5UH3wHg6RM1NYN6ueklavwiUQ==
X-Google-Smtp-Source: ADFU+vtPh9VFF6uJppdFwQULJigLWibp0JW5x3C7j90z+Fnfcy70E2+wXDbPb0ezgo71+CPAU84wHg==
X-Received: by 2002:a37:d96:: with SMTP id 144mr3785883qkn.324.1583953549721; 
 Wed, 11 Mar 2020 12:05:49 -0700 (PDT)
Received: from nicolas-tpx395.localdomain ([2610:98:8005::527])
 by smtp.gmail.com with ESMTPSA id f13sm6334201qka.83.2020.03.11.12.05.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 12:05:47 -0700 (PDT)
Message-ID: <b24e52a8b9c110ad7ded0b031cadc57c74ec8b84.camel@ndufresne.ca>
Subject: Re: [PATCH 6/6] hantro: Refactor for V4L2 API spec compliancy
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 11 Mar 2020 15:05:46 -0400
In-Reply-To: <02c89cb555c10ae61a365a2f54eb72bc4aee3c78.camel@collabora.com>
References: <20200311174300.19407-1-ezequiel@collabora.com>
 <20200311174300.19407-7-ezequiel@collabora.com>
 <02c89cb555c10ae61a365a2f54eb72bc4aee3c78.camel@collabora.com>
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_120550_752839_9D6CC93A 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgbWVyY3JlZGkgMTEgbWFycyAyMDIwIMOgIDE2OjAxIC0wMzAwLCBFemVxdWllbCBHYXJjaWEg
YSDDqWNyaXQgOgo+IE9uIFdlZCwgMjAyMC0wMy0xMSBhdCAxNDo0MyAtMDMwMCwgRXplcXVpZWwg
R2FyY2lhIHdyb3RlOgo+ID4gUmVmYWN0b3IgaG93IFNfRk1UIGFuZCBUUllfRk1UIGFyZSBoYW5k
bGVkLCBhbmQgYWxzbyBtYWtlIHN1cmUKPiA+IGludGVybmFsIGluaXRpYWwgZm9ybWF0IGFuZCBm
b3JtYXQgcmVzZXQgYXJlIGRvbmUgcHJvcGVybHkuCj4gPiAKPiA+IFRoZSBsYXR0ZXIgaXMgYWNo
aWV2ZWQgYnkgbWFraW5nIHN1cmUgdGhlIHNhbWUgaGFudHJvX3tzZXQsdHJ5fV9mbXQKPiA+IGhl
bHBlcnMgYXJlIGNhbGxlZCBvbiBhbGwgcGF0aHMgdGhhdCBzZXQgdGhlIGZvcm1hdCAod2hpY2gg
aXMKPiA+IHBhcnQgb2YgdGhlIGRyaXZlciBzdGF0ZSkuCj4gPiAKPiA+IFRoaXMgY29tbWl0IHJl
bW92ZXMgdGhlIGZvbGxvd2luZyB2NGwyLWNvbXBsaWFuY2Ugd2FybmluZ3M6Cj4gPiAKPiA+IHRl
c3QgVklESU9DX0dfRk1UOiBPSwo+ID4gCWZhaWw6IHY0bDItdGVzdC1mb3JtYXRzLmNwcCg3MTEp
OiBWaWRlbyBDYXB0dXJlIE11bHRpcGxhbmFyOiBUUllfRk1UKEdfRk1UKSAhPSBHX0ZNVAo+ID4g
dGVzdCBWSURJT0NfVFJZX0ZNVDogRkFJTAo+ID4gCWZhaWw6IHY0bDItdGVzdC1mb3JtYXRzLmNw
cCgxMTE2KTogVmlkZW8gQ2FwdHVyZSBNdWx0aXBsYW5hcjogU19GTVQoR19GTVQpICE9IEdfRk1U
Cj4gPiB0ZXN0IFZJRElPQ19TX0ZNVDogRkFJTAo+ID4gCj4gPiBSZXBvcnRlZC1ieTogTmljb2xh
cyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+ID4gU2lnbmVkLW9m
Zi1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4g
Wy4uXQo+ID4gQEAgLTIyNywxMiArMjMyLDEyIEBAIHN0YXRpYyBpbnQgdmlkaW9jX2dfZm10X2Nh
cF9tcGxhbmUoc3RydWN0IGZpbGUgKmZpbGUsIHZvaWQgKnByaXYsCj4gPiAgCXJldHVybiAwOwo+
ID4gIH0KPiA+ICAKPiA+IC1zdGF0aWMgaW50IHZpZGlvY190cnlfZm10KHN0cnVjdCBmaWxlICpm
aWxlLCB2b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mb3JtYXQgKmYsCj4gPiAtCQkJICBib29sIGNh
cHR1cmUpCj4gPiArc3RhdGljIGludCBoYW50cm9fdHJ5X2ZtdChjb25zdCBzdHJ1Y3QgaGFudHJv
X2N0eCAqY3R4LAo+IAo+IE9vcHMsIGl0IHNlZW1zIHRoZXJlJ3MgYSB3YXJuaW5nIGR1ZSB0byBj
dHggYmVpbmcgY29uc3QtcXVhbGlmaWVkLgoKSW5kZWVkOgoKZHJpdmVycy9zdGFnaW5nL21lZGlh
L2hhbnRyby9oYW50cm9fdjRsMi5jOiBJbiBmdW5jdGlvbiDigJhoYW50cm9fdHJ5X2ZtdOKAmToK
ZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fdjRsMi5jOjI4MjozMDogd2Fybmlu
ZzogcGFzc2luZyBhcmd1bWVudCAxIG9mIOKAmGhhbnRyb19uZWVkc19wb3N0cHJvY+KAmSBkaXNj
YXJkcyDigJhjb25zdOKAmSBxdWFsaWZpZXIgZnJvbSBwb2ludGVyIHRhcmdldCB0eXBlIFstV2Rp
c2NhcmRlZC1xdWFsaWZpZXJzXQogIDI4MiB8ICAgICAgICFoYW50cm9fbmVlZHNfcG9zdHByb2Mo
Y3R4LCBmbXQpKQogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+CkluIGZp
bGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb192NGwy
LmM6Mjk6CmRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmg6NDIwOjQyOiBub3Rl
OiBleHBlY3RlZCDigJhzdHJ1Y3QgaGFudHJvX2N0eCAq4oCZIGJ1dCBhcmd1bWVudCBpcyBvZiB0
eXBlIOKAmGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICrigJkKICA0MjAgfCBoYW50cm9fbmVlZHNf
cG9zdHByb2Moc3RydWN0IGhhbnRyb19jdHggKmN0eCwgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQg
KmZtdCkKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgfn5+fn5+fn5+fn5+fn5+fn5+fl5+
fgoKPiAKPiBUaGF0IHNob3VsZCBiZSBmaXhlZCBvZiBjb3Vyc2UuCj4gCj4gUmVnYXJkcywKPiBF
emVxdWllbAo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
