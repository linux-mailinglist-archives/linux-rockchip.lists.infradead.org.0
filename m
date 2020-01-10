Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF98136A12
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Jan 2020 10:40:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6aF8shxWYAujfsR4ASNnjz/3XObi+DIwFrb0eEbPsRk=; b=EPaY+vtdUKOEnA
	Mr66MUH/C+C4Yz+NFYYSe+gzIdfIoDS+4iE3pk/srwhAk/KvAgG9XG7TEj6Kg+pM1QRSMERMDDIM8
	hauMUyU9d1y68ZZ6McwpnhcWu7pFcW64rOt63elfnstdmTQBbh3Kp1jpC79G3xgoFZ5/avgMTDP2E
	5elHYtw9tf0kih+bQpII3Mg4gcL0mbhbzoF6wGlEliJyMLlAsVwBQLEvkvZ8GbNEaut3O3zRIiQMm
	HAB5TAa2a//dmjcc4o5JkoIyxvnAabMNx5g+o8gKzvuHW6Koxym3Ai1KQ+0I0RY8UQeR9sCU3tYZM
	tT5iaXPZrfdXSC8agPKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipqlp-0008U4-QU; Fri, 10 Jan 2020 09:39:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipqlm-0008SP-W2
 for linux-rockchip@lists.infradead.org; Fri, 10 Jan 2020 09:39:56 +0000
Received: by mail-ot1-x341.google.com with SMTP id 77so1339908oty.6
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Jan 2020 01:39:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HdqTwJJbEATjBBq5BEQgJQ40yok+TOu1Ywf9GvVU0MI=;
 b=VrjL9qcZirf0iGtljko69GzR6N4MtUEXcYEmlg4KdBioBCBb3Zs7TReZtCovpWglu/
 EZ9RmpMZc65cogbKiPaiQW/d1G11sIk5gcVg1rG3WTcIGaqo6wNG3XBcwSw1RTOvzzA4
 kEAgdCOL9Rs5JVtEj3EBqoYEZrhU4HUxSXop4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HdqTwJJbEATjBBq5BEQgJQ40yok+TOu1Ywf9GvVU0MI=;
 b=p0AJo44FdVMsTRFbdEU4uu4T5TIjSlVq4VfT6gH75wcsEa0WVPQkwTvNAG/H2sYV51
 fzO2rEpFhJ1JL6HVbG0qkCXud0KkncCPA2Cbsc+vSt+9ptr7C9LZXp6UPV2f14azmi/t
 UWJFqoZRo6RKfI4vt7PCUT2LFuKsyi9f/W2/0KJfrxpg5HLjmW1b8qJsHxqxpKHKjlvU
 itClYMXFLL5j+8qIOCO7Kpjnh1odOo3cEXdVYYKOwOi/V/Ggcl4AvIKyUzxbboXJ2Pf2
 2hqyt0o1eCVgbFEv+gQ8OJSt2/gKaFgZsCpLB05wLlvWb0fZpUQjmduDZiN6o88MOouO
 ytRQ==
X-Gm-Message-State: APjAAAXQBQsVH6VNjXsFGc96qehHCmV9DNud3RVYmXuNkh3zuiDZwbKl
 qLV8UqCCxfWJIRej84XAs9h2X4zzuiHqurKvYcKaqQ==
X-Google-Smtp-Source: APXvYqxE9/+ysAfA0eYfUpXNk8IvwyPuUfFhiryJAIhwoDWrTeeeyal51G3BjBxi55KGeA8Ivdmxc4AbL+7oOC69t8M=
X-Received: by 2002:a05:6830:1112:: with SMTP id
 w18mr1830741otq.356.1578649188050; 
 Fri, 10 Jan 2020 01:39:48 -0800 (PST)
MIME-Version: 1.0
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
 <20200104083806.3930-6-jagan@amarulasolutions.com>
In-Reply-To: <20200104083806.3930-6-jagan@amarulasolutions.com>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 10 Jan 2020 22:39:35 +1300
Message-ID: <CAPnjgZ0u7E=KmiJodARvVFfVv+u0vdxCC1NN_2tnFNAMkp4NLw@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] rockchip: Add Single boot image (with binman,
 pad_cat)
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_013955_050390_21537095 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rockchip@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Akash Gajjar <akash@openedev.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSmFnYW4sCgpPbiBTYXQsIDQgSmFuIDIwMjAgYXQgMjE6MzgsIEphZ2FuIFRla2kgPGphZ2Fu
QGFtYXJ1bGFzb2x1dGlvbnMuY29tPiB3cm90ZToKPgo+IEFsbCByb2NrY2hpcCBwbGF0Zm9ybXMg
c3VwcG9ydCBUUEwgb3IgU1BMLWJhc2VkIGJvb3Rsb2FkZXIKPiBpbiBtYWlubGluZSB3aXRoIFUt
Qm9vdCBwcm9wZXIgYXMgZmluYWwgc3RhZ2UuIEZvciBlYWNoCj4gc3RhZ2Ugd2UgbmVlZCB0byBi
dXJuIHRoZSBpbWFnZSBvbiB0byBmbGFzaCB3aXRoIHJlc3BlY3RpdmUKPiBvZmZzZXRzLgo+Cj4g
VGhpcyBwYXRjaCBjcmVhdGVzIGEgc2luZ2xlIGJvb3QgaW1hZ2UgY29tcG9uZW50IHVzaW5nCj4g
LSBiaW5tYW4sIGZvciBhcm0zMiByb2NrY2hpcCBwbGF0Zm9ybXMKPiAtIHBhZF9jYXQsIGZvciBh
cm02NCByb2NrY2hpcCBwbGF0Zm9ybXMuCj4KPiBUaGlzIHdvdWxkIGhlbHAgdXNlcnMgdG8gZ2V0
IHJpZCBvZiBidXJuaW5nIGRpZmZlcmVudAo+IGJvb3Qgc3RhZ2UgaW1hZ2VzLgo+Cj4gVGhlIG5l
dyBpbWFnZSBjYWxsZWQgJ3UtYm9vdC1yb2NrY2hpcC5iaW4nCj4gd2hpY2ggY2FuIGJ1cm4gaW50
byBmbGFzaCBsaWtlOgo+Cj4g4oK5IHN1ZG8gZGQgaWY9dS1ib290LXJvY2tjaGlwLmJpbiBvZj0v
ZGV2L3NkYSBzZWVrPTY0CgpIb3cgYWJvdXQgYWRkaW5nIHRoZSBpbml0aWFsIDY0IGJsb2NrcyBp
bnRvIHRoZSBpbWFnZSB0b28sIHNvIHRoZSBzZWVrCmlzbid0IG5lZWRlZD8KCj4gVGhpcyB3b3Vs
ZCBzdXBwb3J0IGFsbCByb2NrY2hpcCBwbGF0Zm9ybXMsIGV4Y2VwdCByazMxMjgKPiBzaW5jZSBp
dCBkb2Vzbid0IHN1cHBvcnQgZm9yIFNQTCB5ZXQuCj4KPiBDYzogS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29y
bmlsb3ZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgo+IFJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPgo+IC0tLQo+ICBNYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAg
fCAxNCArKysrKysrKysrKystLQo+ICBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAg
fCAgMSArCj4gIGFyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290LmR0c2kgICB8ICAyICsrCj4gIGFy
Y2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kgICB8ICAyICsrCj4gIGFyY2gvYXJtL2R0cy9y
b2NrY2hpcC11LWJvb3QuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRl
L2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggfCAgMyArKysKPiAgNiBmaWxlcyBjaGFuZ2VkLCA0
MSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCgpSZWdhcmRzLApTaW1vbgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
