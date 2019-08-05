Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710928171C
	for <lists+linux-rockchip@lfdr.de>; Mon,  5 Aug 2019 12:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eOpDMN4u04an3kTS6lo5elDhsoBBvN5E8HD96UZmT8=; b=tHej9gVD5/O+nC
	55IXVjoJpOKOqVBa6xmlnbuXS+9ssRFVM1sQrSQKFCKbaMDpTQtika5xuF0jGS8bZIdZkcIUzX6pP
	n1FiCG9SQfZE2P9bCvBnOJJdlHwWt1XinVKChl7yoVj0uodEOcDmUs6OMNCS9eSdSAMJP69/6M9iL
	M9EO0Fx5zMs6mCXcT2NUkNJQ+05CJ36XQIp2x+2m7Ldt0SSlCEd2jR3oHUH7YosNXo6loxVNFxIPG
	H8O0m5rUCiPFEW2nFIF6Kudt47AI+gXC2tJqk9JHaHkfTUtP2h3YL7If98TGGJIJd+2bKyLCUFffa
	51uHq7eulWXkFQCifecQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaIp-0003YW-IZ; Mon, 05 Aug 2019 10:33:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaIa-0003Mp-MB
 for linux-rockchip@lists.infradead.org; Mon, 05 Aug 2019 10:33:05 +0000
Received: by mail-lj1-x241.google.com with SMTP id x25so78932380ljh.2
 for <linux-rockchip@lists.infradead.org>; Mon, 05 Aug 2019 03:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=u41rCFVRT5TIJ3WzFOFyBFX+clVgfPodEdyZutaTu+E=;
 b=JAnOjSDww3k0wMC7tRMvLH1EJVHUGgbYraz6NUV4+qPVM6BpUbpsYlBAmLsT42AeNX
 dV+a61ouLe8Ue7j6PfJlmxR8BQcaB/OBny1VFbDkMNFRFYOMzDixYPDzGYCO1k0lkBLL
 4F8HEiLeRhlbwEi7L9XIjsyo/8C7+7eocgK2fMrjL+6y/XzFWrWaniMST8AKs152qsU9
 1sKr6OHrw7D1MRnRp2ni7LQ5O4QgczpxV2l2gumIc3QbjcJ+aWpy67paHz30fXP+72c3
 /cHHlsDRR+2VfQ3WxMtouQ/i5uxoWIXXOtF5exGYJTQiWE0Wu+p7yiWXfK5YpUbptdZC
 zSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=u41rCFVRT5TIJ3WzFOFyBFX+clVgfPodEdyZutaTu+E=;
 b=eKFv4GednLHsrWif6gOp9l9D4LWtYdj0x9xM+mQmPJB1ZWlx9o0qH0HqBrg58eFAgr
 RkTsNo75/OPQNm5PCcxQanLx6iO13Lcgs78rK0W4XCfwyOJVHR7bBoPyMpzRyMx+TGQv
 RoBKkEyTUaA5TDuV+shzITwOma61yZG3V0MENC/vlJWEBIBb9taIsIZSrnQg8xU4HesI
 fn1tSipUxslnIQipHTwE6i0XUjocRu4mJ7Kr6gqHK3MfnLNTgBuRO5OkvLTD96mf15jZ
 ZI03PuNhsD39SVtvCdNkw1K+Oklr42q/E/9sIk/Ts3/BUeXs6BlzuTGpfNZNbtG9fMyU
 HMSA==
X-Gm-Message-State: APjAAAU4AaCxJIuFMVqrpvq+wVYalLfW8qdBE8zUtow01eoZOuc7rKKC
 F6NB3mIvvUqbRtzZFG/uckbQNYjgx7gieYptrE+rVedI
X-Google-Smtp-Source: APXvYqwR1dwZfr1HLWJ7cN516WoABshKlyElWdQnlwPXEJQvNocN+VgY7JTuaxnQRyP1XdPQXdRHl6+Y8x0RSi+a6Aw=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16465187ljs.54.1565001183227; 
 Mon, 05 Aug 2019 03:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190726112812.19665-1-anders.roxell@linaro.org>
In-Reply-To: <20190726112812.19665-1-anders.roxell@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:32:52 +0200
Message-ID: <CACRpkdaOe4FvvrVMwLk5_KiMdKVVNm5Z7fSyjPDWKcm5MzxvyQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: rockchip: Mark expected switch fall-through
To: Anders Roxell <anders.roxell@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_033304_719796_BAB6A769 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMToyOCBQTSBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94
ZWxsQGxpbmFyby5vcmc+IHdyb3RlOgoKPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMg
ZW5hYmxlZCBieSBkZWZhdWx0IHRoZSBmb2xsb3dpbmcgd2FybmluZwo+IHdhcyBzdGFydGluZyB0
byBzaG93IHVwOgo+Cj4gLi4vZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYzogSW4g
ZnVuY3Rpb24g4oCYcm9ja2NoaXBfZ3Bpb19zZXRfY29uZmln4oCZOgo+IC4uL2RyaXZlcnMvcGlu
Y3RybC9waW5jdHJsLXJvY2tjaGlwLmM6Mjc4MzozOiB3YXJuaW5nOiB0aGlzIHN0YXRlbWVudCBt
YXkgZmFsbAo+ICB0aHJvdWdoIFstV2ltcGxpY2l0LWZhbGx0aHJvdWdoPV0KPiAgICByb2NrY2hp
cF9ncGlvX3NldF9kZWJvdW5jZShnYywgb2Zmc2V0LCB0cnVlKTsKPiAgICBefn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IC4uL2RyaXZlcnMvcGluY3RybC9waW5j
dHJsLXJvY2tjaGlwLmM6Mjc5NToyOiBub3RlOiBoZXJlCj4gICBkZWZhdWx0Ogo+ICAgXn5+fn5+
fgo+Cj4gUmV3b3JrIHNvIHRoYXQgdGhlIGNvbXBpbGVyIGRvZXNuJ3Qgd2FybiBhYm91dCBmYWxs
LXRocm91Z2guIEFkZAo+ICdyZXR1cm4gLUVOT1RTVVBQOycgdG8gbWF0Y2ggdGhlIGNvbW1lbnQu
Cj4KPiBGaXhlczogZDkzNTEyZWYwZjBlICgiTWFrZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxs
LXRocm91Z2ggd2FybmluZyIpCj4gU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJz
LnJveGVsbEBsaW5hcm8ub3JnPgoKUGF0Y2ggYXBwbGllZC4KCllvdXJzLApMaW51cyBXYWxsZWlq
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
