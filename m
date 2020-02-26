Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687A816FC4E
	for <lists+linux-rockchip@lfdr.de>; Wed, 26 Feb 2020 11:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24nqR6/65HcFtORGCY7+c/nN/05vfiZ3uw35i22PgUk=; b=uqCGQAvkXgeLAO
	ercLrC+VDvXRSXpDE8RxbMlayKVjABrQnP0548Z65x150cO6FOAe+PiwRHzh5TdjkA/3aKy2zLqBW
	fnCW9dyS2fW44pJ92RA7mFSRTUiYN2WaHsX4JG36pYZ1c6y5cMr+18Rmjdt4+T9Yj46jHr8Z4SDjG
	nLeiZ+uyTBDU8Zb72BhPl0NTGfS0E3d7bYlix+n9MV0eyR8CFQvQB65dDRWT9btDzD+BafX1zqDVE
	b/YhRha2Rp7BgT2Y3RnI4iXRFtgfPlR2P/cr/eulzDX8xFnFKF8XVyZyNYize5cm+koLNawvRAksH
	rkqWTz6Q+dEGYtTKdVuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tzb-000336-Ef; Wed, 26 Feb 2020 10:32:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tzY-00031c-7S
 for linux-rockchip@lists.infradead.org; Wed, 26 Feb 2020 10:32:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id v4so2293254wrs.8
 for <linux-rockchip@lists.infradead.org>; Wed, 26 Feb 2020 02:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=vngWQlvz3qLNyE+RsUPpIfx3/4/BoM3TdKapXgnGefM=;
 b=rAVr+MQ9asGFFPCwpGmzPYsJlVLnY+y+A7jEF6EWliOMg9tNZo6vsGdn3DRk9Nyco/
 L9yHexqIT9vF7QZThDoVLUQ2oY2ezWj5n2KccdFdsYHiW6CsVByLm11YAx+6QN/KxePG
 P4brvkXzi041clzd4qD7Cx5EdUhgDuk7+238QvsirzfvVvWRXpcEiqrS4/yeOF6DPJvR
 YNor9oPqFalMkHt8miFVRcecUHCXiHpPtuNm7L49996lfbrzihkOCfIipNhJuiQVwtau
 qYhVSBmbcLciOYLfuoc6SXgU1MB6MbToQaUHaSJh0+ZNqXKQsVAM+mK4ssuNd2AlRDGi
 3V7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=vngWQlvz3qLNyE+RsUPpIfx3/4/BoM3TdKapXgnGefM=;
 b=mVI5zyEidLaXgqbpzs19WsIWUvuZdNNXY1P338AKDfLNzVFybgfNno/fgSRaUmG8+l
 3GyM+dK4YdR+iHNsn6/kpIkGFa/B3KyS6Jcb8mqrE1DS0iuo+HlTmIk7q05w2zF417Ye
 qtRRtFFwb0nce2mOhxp4VN6kDK6+Ems/AtFJVYiyszZ5ablWvb4lCeXWBALmef6x/RTi
 Lf/jDcLkQYKWwUpPo+hKxXWJQmKMSStCU0J3Un2m50Bl7kzpuHNu3B/41UFAuCQGz+n1
 g9re9uQ7QTyBkmtLr9/HhxOyJH1YmKF5tdntoumN+Uag7SGxRFlkC4p86m0uUHy1+2Qt
 rpRQ==
X-Gm-Message-State: APjAAAWKNYv+4nGR/ANRJ7dPaL3emcam8LuzQVHNS4sgGbcwFmhgvEpI
 meG1SADJ0r+BLjUNW9O5kumUYg==
X-Google-Smtp-Source: APXvYqzb6yyf+vODvB2zbXWNfTMDHQRw4bYGUlcc7kj85tOH4WaE/t+FchzQiTLY9dQFy5/m85Znlg==
X-Received: by 2002:a5d:4c41:: with SMTP id n1mr4513692wrt.183.1582713155057; 
 Wed, 26 Feb 2020 02:32:35 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id z16sm2587090wrp.33.2020.02.26.02.32.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 02:32:34 -0800 (PST)
Date: Wed, 26 Feb 2020 10:33:06 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 5/5] mfd: rk808: Convert RK805 to shutdown/suspend hooks
Message-ID: <20200226103306.GI3494@dell>
References: <cover.1578789410.git.robin.murphy@arm.com>
 <02639ae880b9d945c4134a28b1eef3db2ed9353f.1578789410.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <02639ae880b9d945c4134a28b1eef3db2ed9353f.1578789410.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_023236_275582_61591CB6 
X-CRM114-Status: GOOD (  10.07  )
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

T24gU3VuLCAxMiBKYW4gMjAyMCwgUm9iaW4gTXVycGh5IHdyb3RlOgoKPiBSSzgwNSBoYXMgdGhl
IHNhbWUga2luZCBvZiBkdWFsLXJvbGUgc2xlZXAvc2h1dGRvd24gcGluIGFzIFJLODA5L1JLODE3
LAo+IHNvIGl0IG1ha2VzIGxpdHRsZSBzZW5zZSBmb3IgdGhlIGRyaXZlciB0byBoYXZlIHRvIGhh
dmUgdHdvIGNvbXBsZXRlbHkKPiBkaWZmZXJlbnQgbWVjaGFuaXNtcyB0byBoYW5kbGUgZXNzZW50
aWFsbHkgdGhlIHNhbWUgdGhpbmcuIE1vdmUgUks4MDUKPiBvdmVyIHRvIHRoZSBzaHV0ZG93bi9z
dXNwZW5kIGZsb3cgdG8gY2xlYW4gdGhpbmdzIHVwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJvYmlu
IE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4
LmMgICAgICAgfCAzNyArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGlu
Y2x1ZGUvbGludXgvbWZkL3JrODA4LmggfCAgMSAtCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MuCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFj
ZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
