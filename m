Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F12F96E5
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 Nov 2019 18:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=io0cLwZ0MruYA40kD+ltRJUfPAGzJ4OY5qJ4lD1bf0Y=; b=WFBpxhYLcIbGve
	GSfAsmN+9XfGPMbPy/7lx5Qj5CKZyl7bMY/UC44xZNAnxDIfiq33WNLUBzKBKr6ZQVjfTFw069qQL
	iF3vypujUVMKZBQZcfRRZuqUHQEJkYm3zmx5C0BZh4psUyhkbedInCOsQ3qWfF8ItsEUBDsuJA12H
	tVlYc21aQsKI8Eg+hCYUnPjx3CM7DHR/+6B2+TzjLmczBDH4h1zczmBf1+ykKW6Kzukv+a2LQ+Kr6
	Ww65MJgZ+t9mkvAoX2jRKk+GZv+dJNYCjkKuDT5TgKcm7YvpyYffXNBDeQ6nnRzVAKefS/Q1LuRQ5
	+aEN7ixjC3suY3meWgSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZnZ-0001FH-EL; Tue, 12 Nov 2019 17:17:49 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZnQ-000170-5a
 for linux-rockchip@lists.infradead.org; Tue, 12 Nov 2019 17:17:41 +0000
Received: by mail-pf1-x444.google.com with SMTP id s5so13802808pfh.9
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2019 09:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GAxdQVxMEKhKhuZoX/VBOrcEuUfwMEWl5fY0HVG6jDE=;
 b=vWoXjYFmjOttZKwONjxJ81J/VCuN2XQRhnCSkqlhdQq9oK5QFka4Kd5xp3DT3VV3oY
 zYlVuUuTw6pNdbRM0U88rhr9+IvK8p7V3byHtvvE2T222Ja6mvVJ1M3uPdl0vDtIMEJR
 VuiojmGjxZGBlcczfLdrEsLa9LNOLsBJ8PcjE04J1euiQzsaVxJUrFmR1vGuJ1bLEFPV
 5cf1Z7HXzlfFMFXqM6cJ049jXvSmW6Ze1gIk+LZ/9T80z3mMw9EGqPDudOtNhZrpx8Pf
 CIE4bl5kz22UTrI9bVe5BSve8TehRyoQGGzTsDlNJkWMlMzjGPgqClFTZFgMOMRJhXR/
 6hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GAxdQVxMEKhKhuZoX/VBOrcEuUfwMEWl5fY0HVG6jDE=;
 b=iggFN4COHn3NAl1IRNkVPCviMmuiO++IqpFZn3RKo8tzsZVGXVDlHf7/RUPK8pj6Xk
 Phsw71e08B/zO+EI7cyL/paJebvbM++JvApS3viDNjgG/KVVeJ/1t5psqYTATaW2x1LX
 RgVWkK5DfGyv/vxHtMZgLd/RJ4l+wJMzUizHBcuk0qN7a07wZdmhpryRkPJcfDJ6BKts
 5KmlTOXLv6F+utQOhvDShtPUNjnDziITonYIoqOKtbQF6Jd4MvNFsgq75cwSw5GDViJR
 KWbbuafdNespS8QOxDhshejR8ROS2VagUR8zNhY2WeDGOZwkgpYdZOSqhpBWLEL0pPeO
 Vonw==
X-Gm-Message-State: APjAAAVc9cp6De8Sdr+6kSYUdjNiMurYV8/jmvzMHuLsLPWp217nKwaR
 6rQmWPOdg5hk8iz8ph14bFCsoeTM2PHu
X-Google-Smtp-Source: APXvYqwtTdqQJZNRF2wCGHv2Dne2JxqgG/WDm44w3rTdj757M0nHUk5Wv2dL7mF3wT7UkK72qdkqSg==
X-Received: by 2002:a17:90a:b394:: with SMTP id
 e20mr2437267pjr.130.1573579058856; 
 Tue, 12 Nov 2019 09:17:38 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:6488:b1d2:4134:76b9:cbea:403])
 by smtp.gmail.com with ESMTPSA id p16sm20720040pfn.171.2019.11.12.09.17.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 09:17:37 -0800 (PST)
Date: Tue, 12 Nov 2019 22:47:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Message-ID: <20191112171726.GA18622@Mani-XPS-13-9360>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
 <3d129826-7705-819e-e68b-cc9080eb6c95@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3d129826-7705-819e-e68b-cc9080eb6c95@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_091740_222103_11F2484D 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heiko@sntech.de, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDQ6MTA6MTdQTSArMDgwMCwgS2V2ZXIgWWFuZyB3cm90
ZToKPiAKPiBPbiAyMDE5LzExLzExIOS4i+WNiDE6MjIsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3
cm90ZToKPiA+IEhpIEtldmVyLAo+ID4gCj4gPiBPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCAwODo1
MTo1N0FNICswODAwLCBLZXZlciBZYW5nIHdyb3RlOgo+ID4gPiBBZGQgdmRkX2xvZyBub2RlIGFj
Y29yZGluZyB0byByb2NrOTYwIHNjaGVtYXRpYyBWMTMuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgo+ID4gPiAtLS0KPiA+
ID4gCj4gPiA+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5k
dHNpIHwgMTIgKysrKysrKysrKysrCj4gPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlv
bnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1yb2NrOTYwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrOTYwLmR0c2kKPiA+ID4gaW5kZXggYzdkNDhkNDFlMTg0Li43M2FmZWUyNTcxMTUg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Y2s5NjAuZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2NrOTYwLmR0c2kKPiA+ID4gQEAgLTc2LDYgKzc2LDE4IEBACj4gPiA+ICAgCQlyZWd1bGF0
b3ItYWx3YXlzLW9uOwo+ID4gPiAgIAkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gPiA+
ICAgCX07Cj4gPiA+ICsKPiA+ID4gKwl2ZGRfbG9nOiB2ZGQtbG9nIHsKPiA+ID4gKwkJY29tcGF0
aWJsZSA9ICJwd20tcmVndWxhdG9yIjsKPiA+ID4gKwkJcHdtcyA9IDwmcHdtMiAwIDI1MDAwIDE+
Owo+ID4gPiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2ZGRfbG9nIjsKPiA+ID4gKwkJcmVndWxhdG9y
LWFsd2F5cy1vbjsKPiA+ID4gKwkJcmVndWxhdG9yLWJvb3Qtb247Cj4gPiA+ICsJCXJlZ3VsYXRv
ci1taW4tbWljcm92b2x0ID0gPDgwMDAwMD47Cj4gPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92
b2x0ID0gPDE0MDAwMDA+Owo+ID4gPiArCQlyZWd1bGF0b3ItaW5pdC1taWNyb3ZvbHQgPSA8OTUw
MDAwPjsKPiA+IFRoZSBkZWZhdWx0IHZhbHVlIHNlZW1zIHRvIGJlIDAuOXYgYXMgcGVyIGJvdGgg
Um9jazk2MCBhbmQgRmljdXMgc2NoZW1hdGljcy4KPiAKPiAKPiBUaGUgZGVmYXVsdCB2YWx1ZSBp
cyAwLjlWIHdoZW4gcHdtLXJlZ3VsYXRvciBpcyBub3QgZW5hYmxlZCwgYW5kIHRoaXMKPiAnaW5p
dC1taWNyb3ZvbHQnIHN1cHBvc2UgdG8gc2V0IHRoZQo+IAo+IGluaXQgdmFsdWUgd2hlbiBwd20t
cmVndWxhdG9yIGlzIGVuYWJsZWQuIEkgc2V0IHRoaXMgdG8gOTUwbVYgYmVjYXVzZSBQZXRlcgo+
IHJlcG9ydCB0aGF0IGhlIGV4cGVyaWVuY2UKPiAKPiB0aGUgc3lzdGVtIGhhbmcgZHVyaW5nIEZl
ZG9yYSBib290wqAgdXAsIGFuZCB1cGRhdGUgdGhlIHZkZF9sb2cgdG8gOTUwbVYgY2FuCj4gZml4
IHRoZSBpc3N1ZSBkdWUgdG8KPiAKPiBlbmdpbmVlciBtZWFzdXJlIG9uIGFub3RoZXIgcmszMzk5
IGJvYXJkIHB1bWEtUTcuCj4gCgpva2F5LiBQcmV2aW91c2x5IHdlIGhhZCBwb3N0LWJvb3QgaGFu
ZyBpc3N1ZSBvbiBSb2NrOTYwIE1vZGVsIEEgYm9hcmRzIHdoZW4gdGhlCnBlcmZvcm1hbmNlIGdv
dmVybm9yIHdhcyBzZXQgYXMgZGVmYXVsdC4gU28gdGhlIHZkZF9sb2cgbm9kZSB3YXMgcmVtb3Zl
ZCBmcm9tCnRoZSBkZXZpY2V0cmVlLiBIYXZlIHlvdSB0ZXN0ZWQgdGhhdCBjYXNlIGFsc28/CgpI
ZXJlIGlzIHRoZSBjb21taXQ6CjEzNjgyZTUyNDE2NyAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBy
ZW1vdmUgdmRkX2xvZyBmcm9tIHJvY2s5NjAgdG8gZml4IGEgc3RhYmlsaXR5IGlzc3VlcyIpCgp0
aGFua3MsCk1hbmkKPiAKPiBUaGFua3MsCj4gCj4gLSBLZXZlcgo+IAo+ID4gCj4gPiBPdGhlciB0
aGFuIHRoYXQsCj4gPiBBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFu
LnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+IAo+ID4gVGhhbmtzLAo+ID4gTWFuaQo+ID4gCj4g
PiA+ICsJCXZpbi1zdXBwbHkgPSA8JnZjY19zeXM+Owo+ID4gPiArCX07Cj4gPiA+ICAgfTsKPiA+
ID4gICAmY3B1X2wwIHsKPiA+ID4gLS0gCj4gPiA+IDIuMTcuMQo+ID4gPiAKPiAKPiAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
