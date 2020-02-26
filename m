Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307B616FC46
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 11:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+11NBCJWotTRw16+pZPQLrcoWzAeg9kgWDL8Ftlwaag=; b=O3fvfLHco3SZJS
	BsxRe4yU3Lrgxmqm9qxc6cuDyIZYNve9KYJFzDukfnG381UJl1qlHlvlRvXay5gh2B0HANCeTln/l
	9YVMNqiYUbYH9n75AjOa56u4atd3vYwe0pePCBiGKosyKo32wpu7YCWqR8z02sxJwuxAJzmAXhtpl
	N7TQJh/c53BD12vpjDOY7Fy64lvybfRfzzd58oaEBjTSFjFXtgiW+dtNYXIG2cuQlwWjIw/McUXGm
	9WVIgYBYTBwL7OiV3K7NNzkel3yEbFXzkp18xCEpduRtRjwDodeKE2WIUkGEpyemTuu+3X13UD4CD
	uUmmZO3GtXEsbEWJ1e+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tyx-0002f5-KB; Wed, 26 Feb 2020 10:31:59 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tyq-0002eV-SR
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 10:31:56 +0000
Received: by mail-wr1-x443.google.com with SMTP id v2so1237378wrp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Feb 2020 02:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=VlmNmMOEnccWBMpLFUQyGq7ZQSGdCXjPZIAycYxskHQ=;
 b=WbvPndXK5aoVKO58SR6GoFIQp9plmxroG1R8Olizhb1uoUDD0jL2uCxqMvdtfEQBAQ
 sGYvAYGDOq+XDwLV2eOUt/3eXiXSReUtPWyCmgLVAlCE3dStEfMr5K4IoEsLBBdNijpu
 cvp1EWyAPt4AB6sdMzPTgltYYedkoEkfaXI9mRQWrpLPfAwG00yozaaJY4s6u0Hr2hS4
 aFz9YOIXZAJ4V3KGnZYFJkTzFSLA3TRpmrq/0qLzCrk1ZdMuen8KbbMJQVCbAs1HgX3N
 30T9zMztnlPURdDYHjwPcPLiTnkrPkTDA/T0wxCIMSzXHOJBx0gCeFDCt+GKO4L4sBbr
 wA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=VlmNmMOEnccWBMpLFUQyGq7ZQSGdCXjPZIAycYxskHQ=;
 b=llJ8AJYLHFjjfetuo1KEDrYk9jV4qcr+QIIme4DCq3XPMtMfciOIn+0t372Sx4JAn+
 nNDvkdh3atuursh+HjMIR1/FzC4xzFupJZTLm7HLs2ZJJqfIgc/B6Bs40LZoHLHeotLj
 ifnBl+KaVcmU35qFxQoK4r90lm9abYGLYUMBY2ptV5hb4ITZsPFRnOKxZ3Xjq4Hp3dDq
 YSTWjjb+mQ9pt7sgRA8I3FEUjVLlPszZQYcgrUhdwfSeL1EDlGDzf6STAbo6cnMScIPR
 yrd7mRd7oMyquwrRqunFS1PRuoVIQ7p898eeCNEkJp2m8q6p4Xqn9236GNJ/RngTlthI
 q2KQ==
X-Gm-Message-State: APjAAAUAevs/j8HyglkHySOJWuJ8XfJXaDMLFYf3dcOkS6JKeqViMAQ7
 izGd+wPKO0s8pTuoDExSOCDQjw==
X-Google-Smtp-Source: APXvYqz93XBvhXDhBn8QRAlqvgq8Tzy4pJGLOiUuzrksDfRPQP5AO6Mif32DtArQPwf5irPXzxQtgg==
X-Received: by 2002:a5d:6445:: with SMTP id d5mr4733774wrw.244.1582713111035; 
 Wed, 26 Feb 2020 02:31:51 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id o4sm2502608wrx.25.2020.02.26.02.31.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:31:50 -0800 (PST)
Date: Wed, 26 Feb 2020 10:32:22 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 1/5] mfd: rk808: Always use poweroff when requested
Message-ID: <20200226103222.GE3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <233bf172a5310658d703b11be6e637d6c4d46338.1578789410.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <233bf172a5310658d703b11be6e637d6c4d46338.1578789410.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_023152_954065_551EDDC4 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gU3VuLCAxMiBKYW4gMjAyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgoKPiBGcm9tOiBTb2VyZW4g
TW9jaCA8c21vY2hAd2ViLmRlPgo+IAo+IFdpdGggdGhlIGRldmljZSB0cmVlIHByb3BlcnR5ICJy
b2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlciIgd2UKPiBleHBsaWNpdGx5IHJlcXVlc3Qg
dG8gdXNlIHRoaXMgUE1JQyB0byBwb3dlciBvZmYgdGhlIHN5c3RlbS4gU28gYWx3YXlzCj4gcmVn
aXN0ZXIgb3VyIHBvd2Vyb2ZmIGZ1bmN0aW9uLCBldmVuIGlmIHNvbWUgb3RoZXIgaGFuZGxlciAo
cHJvYmFibHkKPiBQU0NJIHBvd2Vyb2ZmKSB3YXMgcmVnaXN0ZXJlZCBiZWZvcmUuCj4gCj4gVGhp
cyBkb2VzIHRlbmQgdG8gcmV2ZWFsIGEgd2FybmluZyBvbiBzaHV0ZG93biBkdWUgdG8gdGhlIFJv
Y2tjaGlwIEkyQwo+IGRyaXZlciBub3QgaW1wbGVtZW50aW5nIGFuIGF0b21pYyB0cmFuc2ZlciBt
ZXRob2QsIGhvd2V2ZXIgc2luY2UgdGhlCj4gd3JpdGUgdG8gREVWX09GRiB0YWtlcyBlZmZlY3Qg
aW1tZWRpYXRlbHkgdGhlIEkyQyBjb21wbGV0aW9uIGludGVycnVwdAo+IGlzIG1vb3QgYW55d2F5
LCBhbmQgYXMgdGhlIHZlcnkgbGFzdCB0aGluZyB3cml0dGVuIHRvIHRoZSBjb25zb2xlIGl0IGlz
Cj4gb25seSB2aXNpYmxlIHRvIHVzZXJzIGdvaW5nIG91dCBvZiB0aGVpciB3YXkgdG8gY2FwdHVy
ZSBzZXJpYWwgb3V0cHV0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNvZXJlbiBNb2NoIDxzbW9jaEB3
ZWIuZGU+Cj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4g
WyBybTogbm90ZSBwb3RlbnRpYWwgd2FybmluZyBpbiBjb21taXQgbWVzc2FnZSBdCj4gU2lnbmVk
LW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9tZmQvcms4MDguYyB8IDExICsrLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFj
ZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
