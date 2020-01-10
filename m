Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DDE136A16
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Jan 2020 10:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ki7yplsph5J143AQKE/j6Vou5sTQhUXXieZDU+4H1eE=; b=lDCcivaqeJqe3Z
	imFw794SvXGjeSC4mSNBWIMlNNjy5eR/8mBMOk6vv9honTMwvJ938i7ShuCGaXpFUexlr/kgz3Vw2
	Vof13545LGX6c4+qEoi8cSOWXoF4zwoBkT3Zpp81xuNz5l0U32IiPXhaWYtWQ2SWPVvmjVvBUSqfI
	57xTuykE8n2+FufthN8BBr1ekOPYSx8JIFRU1hKa1quafG53AqCsmFvt6ulWie7oJCr6tJe8Qi7bG
	Tlvhvs3xoBSw8oXuqiSygN3aWNqDug6wfwCaCeorvfGFZ/EjD04iNQ61bh7t12UFBQPgGv+CO6HZR
	0QHWEyDyMba0RdI5ltJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipqo8-0001k6-K3; Fri, 10 Jan 2020 09:42:20 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipqo5-0001jP-Rl
 for linux-rockchip@lists.infradead.org; Fri, 10 Jan 2020 09:42:19 +0000
Received: by mail-il1-x144.google.com with SMTP id g12so1318255ild.2
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Jan 2020 01:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=318bz1iipoOPcu+jYfuRZtXJ8N5+/jjj5N/ZjvB/Bs0=;
 b=eMxpIKBr3NqiPL4EO3ZrsOakBNVKUJfPCSjrULacOnIhrk0Vd01QO1r7nnoRSH/Xsq
 YbNwmXYZ9+hIGa6KnMDAJS386Ofk6Lkc4AK0ytNU4DAH3eI2mpc0iV7dDaWbyUwJ4DXQ
 NVYIpqWkIyk+VfyQ3YrvEfiDf4rMEnwG7PgeqNBJRG2basj1LhNzLxMk+OmOXjGsvA93
 42vpcXI3yzXrL9nGTQ+k0Avals66Kfbqpdi1hYFApQ0s/rf5YbLbCJNd8vaF1l04N+/c
 Q27Ziik5G8k1bexZsNcs1YowNtNlEk+0eItGTX5WvEnxwftSOi+eUeGXdnKbkTfPnBya
 LwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=318bz1iipoOPcu+jYfuRZtXJ8N5+/jjj5N/ZjvB/Bs0=;
 b=Yd4hu3Qz9CXqLhdq6lbnNXjWMu2M0sfcm3fdOWdB26MRR21ymv+w0uncy2/vEM+zFv
 N1NpvEToz2fiB8KVmubhBgFpY6JTutComclnJotNULa3JYb0n0CfLdb5hQwNaU4cqHfh
 utqnawQsK6ZJ9zbFyqxNrXfFrQB5Wo+K7i4Zkq5UuOm/c0SLgRXQCfIFLZ/YLiTi6UNm
 hDhJ7KtfBNMQeEDGMooM03N9x3syvsfABxcEVC5A20jXtbNzshtUDgkdS3db5b8sNY7+
 VvZT3mErVmNez523aH6ovYtX86G/72C8/b2C0JoYzORhzkc1Jkdy8Y/CaAzVr5iG14rA
 +iTw==
X-Gm-Message-State: APjAAAWUY/iUHHwUp6fJJewYMPLk0a6orO+vwqmDInLGTmIFtYEeqM7L
 Cl0BTeJj2vn/0UXmOtz2z2GRU5+ykg21TmUF0BY=
X-Google-Smtp-Source: APXvYqystfujR19hcNJRRjXvUKuizLbvHAOk0apS2NtdJ84/VXofDNjeJ/XHQPKT1Gchq39qxJzH53XboxyXZ/GsCxU=
X-Received: by 2002:a92:8893:: with SMTP id m19mr1886804ilh.4.1578649335465;
 Fri, 10 Jan 2020 01:42:15 -0800 (PST)
MIME-Version: 1.0
References: <20200104083806.3930-1-jagan@amarulasolutions.com>
 <20200104083806.3930-6-jagan@amarulasolutions.com>
 <CAPnjgZ0u7E=KmiJodARvVFfVv+u0vdxCC1NN_2tnFNAMkp4NLw@mail.gmail.com>
In-Reply-To: <CAPnjgZ0u7E=KmiJodARvVFfVv+u0vdxCC1NN_2tnFNAMkp4NLw@mail.gmail.com>
From: "Matwey V. Kornilov" <matwey.kornilov@gmail.com>
Date: Fri, 10 Jan 2020 12:42:03 +0300
Message-ID: <CAJs94EYEr82dv0_Wu_Y0XY=fA1kxvBt-Cav+vuR1MUA2U3811w@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] rockchip: Add Single boot image (with binman,
 pad_cat)
To: Simon Glass <sjg@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_014217_923278_3FC8617D 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matwey.kornilov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

0L/RgiwgMTAg0Y/QvdCyLiAyMDIwINCzLiDQsiAxMjozOSwgU2ltb24gR2xhc3MgPHNqZ0BjaHJv
bWl1bS5vcmc+Ogo+Cj4gSGkgSmFnYW4sCj4KPiBPbiBTYXQsIDQgSmFuIDIwMjAgYXQgMjE6Mzgs
IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPiB3cm90ZToKPiA+Cj4gPiBB
bGwgcm9ja2NoaXAgcGxhdGZvcm1zIHN1cHBvcnQgVFBMIG9yIFNQTC1iYXNlZCBib290bG9hZGVy
Cj4gPiBpbiBtYWlubGluZSB3aXRoIFUtQm9vdCBwcm9wZXIgYXMgZmluYWwgc3RhZ2UuIEZvciBl
YWNoCj4gPiBzdGFnZSB3ZSBuZWVkIHRvIGJ1cm4gdGhlIGltYWdlIG9uIHRvIGZsYXNoIHdpdGgg
cmVzcGVjdGl2ZQo+ID4gb2Zmc2V0cy4KPiA+Cj4gPiBUaGlzIHBhdGNoIGNyZWF0ZXMgYSBzaW5n
bGUgYm9vdCBpbWFnZSBjb21wb25lbnQgdXNpbmcKPiA+IC0gYmlubWFuLCBmb3IgYXJtMzIgcm9j
a2NoaXAgcGxhdGZvcm1zCj4gPiAtIHBhZF9jYXQsIGZvciBhcm02NCByb2NrY2hpcCBwbGF0Zm9y
bXMuCj4gPgo+ID4gVGhpcyB3b3VsZCBoZWxwIHVzZXJzIHRvIGdldCByaWQgb2YgYnVybmluZyBk
aWZmZXJlbnQKPiA+IGJvb3Qgc3RhZ2UgaW1hZ2VzLgo+ID4KPiA+IFRoZSBuZXcgaW1hZ2UgY2Fs
bGVkICd1LWJvb3Qtcm9ja2NoaXAuYmluJwo+ID4gd2hpY2ggY2FuIGJ1cm4gaW50byBmbGFzaCBs
aWtlOgo+ID4KPiA+IOKCuSBzdWRvIGRkIGlmPXUtYm9vdC1yb2NrY2hpcC5iaW4gb2Y9L2Rldi9z
ZGEgc2Vlaz02NAo+Cj4gSG93IGFib3V0IGFkZGluZyB0aGUgaW5pdGlhbCA2NCBibG9ja3MgaW50
byB0aGUgaW1hZ2UgdG9vLCBzbyB0aGUgc2Vlawo+IGlzbid0IG5lZWRlZD8KPgoKSXQgd2lsbCBi
cmVhayBwYXJ0aXRpb24gdGFibGVzIG9uIHRoZSB0YXJnZXQgZGV2aWNlLgoKPiA+IFRoaXMgd291
bGQgc3VwcG9ydCBhbGwgcm9ja2NoaXAgcGxhdGZvcm1zLCBleGNlcHQgcmszMTI4Cj4gPiBzaW5j
ZSBpdCBkb2Vzbid0IHN1cHBvcnQgZm9yIFNQTCB5ZXQuCj4gPgo+ID4gQ2M6IEtldmVyIFlhbmcg
PGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4gPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxt
YXR3ZXkua29ybmlsb3ZAZ21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gPiBSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8
a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiA+IC0tLQo+ID4gIE1ha2VmaWxlICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDE0ICsrKysrKysrKysrKy0tCj4gPiAgYXJjaC9hcm0vS2NvbmZp
ZyAgICAgICAgICAgICAgICAgIHwgIDEgKwo+ID4gIGFyY2gvYXJtL2R0cy9yazMwMzYtdS1ib290
LmR0c2kgICB8ICAyICsrCj4gPiAgYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaSAgIHwg
IDIgKysKPiA+ICBhcmNoL2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0c2kgfCAyMSArKysrKysr
KysrKysrKysrKysrKysKPiA+ICBpbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggfCAg
MyArKysKPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3Qu
ZHRzaQo+Cj4gUmVnYXJkcywKPiBTaW1vbgoKCgotLSAKV2l0aCBiZXN0IHJlZ2FyZHMsCk1hdHdl
eSBWLiBLb3JuaWxvdgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
