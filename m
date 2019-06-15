Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CE546D3A
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Jun 2019 02:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rc/vQ7X/VEKaAfJ2S5aDFwnhqBrMwzDILk8j55EbYoI=; b=Vb51+d6N9mxPl3qyan+uCriDjC
	1AV49q7DHwz1Le0Zc//IRFUIHG+jXPWzS8REn68wjmb/czDfwhcuKUupAI3XsC5QvqyrEXM78fZ/P
	znjRaVUokxhq1cnJIv+KJ0rI3Uy50eBXWkamYQ69ZtVedvxWehblpvUISQpvIoZZEbY+XNXGyG9Ra
	NCRrKJMuMD2gKs+iTuqwv0SlxHKCi35RBgJNoXUwqI2U5S8ojnxAjZMRmUB32MTG1Je/F57IGAI+5
	48oi8jGjgoJcRje9mxs1H1RkBO9Gmn5kR0A3CPgwQsVUrl/Bg0MZAFIxu2QN4520CC3snX481hCUz
	Icl5Kc8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbwb9-000277-Os; Sat, 15 Jun 2019 00:31:11 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbwb3-000228-Pk
 for linux-rockchip@lists.infradead.org; Sat, 15 Jun 2019 00:31:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so3966125wma.1
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 17:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=NpDGdmoOjtyBXDr5y0skDODDDj2CVbD6fMVnEe7Jo4A=;
 b=FZfjN6yYLzSuymB6H5jINR+EpgLL5+Zuh8/rAZTefUsOEnQySeYimSWokfn27dtNCU
 oMbHZtVoaVEUP5CiG3IfjLF4jCn7lw04xc/iHCzFO7Y7JpPhVocHE9yDSb/ZnFbQQXEU
 PUSUM83kP2XIsziAhaMdkHZ4LUn8oy4L7G0qK0DYy57vG8FPbvqVOIwK3lTObBdKcMvZ
 GD4PCNhlSx2PIkgtTXgtICQQ8DxKW15j0Q712AQMX4QEHS/eJzBdkbZEdkU3Lb8PKTxG
 XYsRYXURThTzQFtxQmhxzS9UZYk/jwhouWIMLH+snHkqKu6akC0A+dmk79Dt8L++tP3d
 7rZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=NpDGdmoOjtyBXDr5y0skDODDDj2CVbD6fMVnEe7Jo4A=;
 b=mpEiS1MwxCH4mlJUUS9fome0QWG9KuHzP8+eR9UwN69ODADZ2s6PYQpYS2b/0g0yjK
 EtqsKdNzNshY3rUZEnDqYkNsSjoCsKFQfYekx4rvkFkoIiIIlBLQPPeelCKscE56DIkZ
 RGqK7TYMdGloRftH1R2/kNu5qm3ynexU47/KPajvX0jlNv9OOacmiaSn8z1WOqdoqa7p
 ODhbB9Fl6GshUKtv3rh7XRrMf3ARYVpfpeElMr2WBkZe2OhyhYNuxlHBRMhpyoyPpArm
 6G/efuYMlFzGTQvxGutyNnsorpkXUbRPaGmNid4ssID34gUoZ3RShEzSJPzoKDT48S0u
 AkGQ==
X-Gm-Message-State: APjAAAWvEkbhRhdeuu6o0f1MkHP2wEVkXfOc8vANU99a6w6S/3YeejVR
 9T/2x5zr/BTNBbTnY5NOjsM=
X-Google-Smtp-Source: APXvYqzIjjjN0kRh2JzcySUyDN8xBIB9FWAVySz4W0C865hyHcRN1vWlUJTxezrjhV8UNLSPfW8ABg==
X-Received: by 2002:a05:600c:118a:: with SMTP id
 i10mr4270109wmf.162.1560558663612; 
 Fri, 14 Jun 2019 17:31:03 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id b2sm5438787wrp.72.2019.06.14.17.31.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 17:31:02 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2] arm64: rockchip: dts: sapphire: Fix USB3 Type-C.
Date: Sat, 15 Jun 2019 02:31:01 +0200
MIME-Version: 1.0
Message-ID: <4b759fa0-8fe9-4686-b5a7-b7a4e4564419@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_173105_900666_639F9B83 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 William wu <wulf@rock-chips.com>, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QmVmb3JlIHRoaXMgcGF0Y2gsIHRoZSBUeXBlLUMgcG9ydCBvbiB0aGUgU2FwcGhpcmUgYm9hcmQg
aXMgZGVhZC4KSWYgc2V0dGluZyB0aGUgJ3JlZ3VsYXRvci1hbHdheXMtb24nIHByb3BlcnR5IHRv
ICd2Y2M1djBfdHlwZWMwJwp0aGVuIHRoZSBwb3J0IHdvcmtzIGZvciBhYm91dCA0IHNlY29uZHMg
YXQgc3RhcnQtdXAuIFRoaXMgaXMgYQpzYW1wbGUgdHJhY2Ugd2l0aCBhIG1lbW9yeSBzdGljayBw
bHVnZ2VkIGluOgoxLi0gVGhlIG1lbW9yeSBzdGljayBMRUQgbGlnaHRzIG9uIGFuZCBrZXJuZWwg
cmVwb3J0czoKWyAgICA0Ljc4Mjk5OV0gc2NzaSAwOjA6MDowOiBEaXJlY3QtQWNjZXNzIFVTQiBE
SVNLIFBNQVAgUFE6IDAgQU5TSTogNApbICAgIDUuOTA0NTgwXSBzZCAwOjA6MDowOiBbc2RiXSAz
OTEzMzQ0IDUxMi1ieXRlIGxvZ2ljYWwgYmxvY2tzOiAoMi4wMCAKR0IvMS44NyBHaUIpClsgICAg
NS45MDY4NjBdIHNkIDA6MDowOjA6IFtzZGJdIFdyaXRlIFByb3RlY3QgaXMgb2ZmClsgICAgNS45
MDg5NzNdIHNkIDA6MDowOjA6IFtzZGJdIE1vZGUgU2Vuc2U6IDIzIDAwIDAwIDAwClsgICAgNS45
MDkxMjJdIHNkIDA6MDowOjA6IFtzZGJdIE5vIENhY2hpbmcgbW9kZSBwYWdlIGZvdW5kClsgICAg
NS45MTEyMTRdIHNkIDA6MDowOjA6IFtzZGJdIEFzc3VtaW5nIGRyaXZlIGNhY2hlOiB3cml0ZSB0
aHJvdWdoClsgICAgNS45NTE1ODVdICBzZGI6IHNkYjEKWyAgICA1Ljk1NDgxNl0gc2QgMDowOjA6
MDogW3NkYl0gQXR0YWNoZWQgU0NTSSByZW1vdmFibGUgZGlzawoyLi0gNCBzZWNvbmRzIGxhdGVy
IHRoZSBtZW1vcnkgc3RpY2sgTEVEIGxpZ2h0cyBvZmYgYW5kIGtlcm5lbCByZXBvcnRzOgpbICAg
IDkuMDgyODIyXSBwaHkgcGh5LWZmNzcwMDAwLnN5c2Nvbjp1c2IyLXBoeUBlNDUwLjI6IGNoYXJn
ZXIgPSAKVVNCX0RDUF9DSEFSR0VSCjMuLSBBZnRlciBhIG1pbnV0ZSB0aGUga2VybmVsIHJlcG9y
dHM6ClsgICA3MS42NjY3NjFdIHVzYiA1LTE6IFVTQiBkaXNjb25uZWN0LCBkZXZpY2UgbnVtYmVy
IDIKSXQgaGFzIGJlZW4gY2hlY2tlZCB0aGF0LCBhbHRob3VnaCB0aGUgTEVEIGlzIG9mZiwgVkJV
UyBpcyBwcmVzZW50LgoKSWYsIGluc3RlYWQsIHRoZSBkcl9tb2RlIGlzIGNoYW5nZWQgdG8gaG9z
dCBhbmQgdGhlIHBoeS1zdXBwbHkgY2hhbmdlZAphY2NvcmRpbmdseSwgdGhlbiBpdCB3b3Jrcy4g
SXQgaGFzIG9ubHkgYmVlbiB0ZXN0ZWQgaW4gaG9zdCBtb2RlLgoKU2lnbmVkLW9mZi1ieTogVmlj
ZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPgotLS0KCkhpIEhlaWtvLApiZWZvcmUgaSBk
aWQgdGVzdDoKIGEuLSBhcHBseWluZyBvbmx5IHRoZSBmaXJzdCBwYXJ0IG9mIHRoZSBwYXRjaDog
cmVnLWFsd2F5cy1vbgogYi4tIGFwcGx5aW5nIHRoZSBmdWxsIHBhdGNoCmJ1dCBkaWQgbm90IHRl
c3Q6CiBjLi0gYXBwbHlpbmcgb25seSB0aGUgbGFzdCBwYXJ0IG9mIHRoZSBwYXRjaCwgYXMgeW91
IHN1Z2dlc3QKTm93IGkgaGF2ZSB0ZXN0ZWQgKGMpIGFuZCBpdCBhbHNvIHdvcmtzLCBzbywgaGVy
ZSBpcyB2Mi4KClRoYW5rcyBmb3IgcmV2aWV3aW5nIQoKUmVnYXJkcywKICBWaWNlbsOnLgoKZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXNhcHBoaXJlLmR0
c2kgCmIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktc2FwcGhpcmUuZHRzaQpp
bmRleCAwNDYyM2U1MmFjNWQuLjcyMDAwYTdiNjY2ZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktc2FwcGhpcmUuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1zYXBwaGlyZS5kdHNpCkBAIC01NjUsMTIgKzU2NiwxMSBA
QAogCXN0YXR1cyA9ICJva2F5IjsKIAogCXUycGh5MF9vdGc6IG90Zy1wb3J0IHsKLQkJcGh5LXN1
cHBseSA9IDwmdmNjNXYwX3R5cGVjMD47CiAJCXN0YXR1cyA9ICJva2F5IjsKIAl9OwogCiAJdTJw
aHkwX2hvc3Q6IGhvc3QtcG9ydCB7Ci0JCXBoeS1zdXBwbHkgPSA8JnZjYzV2MF9ob3N0PjsKKwkJ
cGh5LXN1cHBseSA9IDwmdmNjNXYwX3R5cGVjMD47CiAJCXN0YXR1cyA9ICJva2F5IjsKIAl9Owog
fTsKQEAgLTYyMCw3ICs2MjAsNyBAQAogCiAmdXNiZHJkX2R3YzNfMCB7CiAJc3RhdHVzID0gIm9r
YXkiOwotCWRyX21vZGUgPSAib3RnIjsKKwlkcl9tb2RlID0gImhvc3QiOwogfTsKIAogJnVzYmRy
ZDNfMSB7Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
