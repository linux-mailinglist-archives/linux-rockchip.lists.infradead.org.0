Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 281CF12A068
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Dec 2019 12:22:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBNW/aBlvhnQx7/2uHludlmDYTDxdjLNXsWbptKTB+U=; b=ZSmVUmpne7DnLe
	LIwfXPIhq2Zz4zfSUoxS/29rGkFN8GQ0MXbgpSM2rQd5tCQyCoou26vyasq43L3RsUhsWcv1FIqCl
	IpJmhk4OSLnKiO5Aw+TXys2rEsQN1N+fPulw8pppeEoAul/8f/XCXRNzFq7kOnBK3onCHXk4+TgVi
	8k+3585Z60ah777lvI9vzdLBJBdX9YjXLKPW1wSm93sDCGPRU/c8qgnPSEzkjOYW232Dzo4vl4BNQ
	KafUugllvjt8ORBjXe+/cJ2O27ETF9pogSbV6oUO8mUj0GV/mhgYADF1XN6GER18XHyJ24rKUS6yx
	ngXbUC8ejSoBl16hAe+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijiGg-00004y-Ij; Tue, 24 Dec 2019 11:22:26 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijiGc-0008VN-Ju; Tue, 24 Dec 2019 11:22:23 +0000
Received: by mail-ed1-x542.google.com with SMTP id f8so17729450edv.2;
 Tue, 24 Dec 2019 03:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N+JpIu3vYJU8a5Gq7Z5l9BFQkWLO3Nuw3pvsMvETS7c=;
 b=H2b2ofvx22QIFqPfWb/57Cgo4+6EYRM3UmWRLglTZC78WjixSKQRStrNRVkP41+J3i
 D9rt2R9ktslIGTdHcHmxVtFRgeRAodsryfwssz/uNBn9qP1aW+pFoeFzxj8r4J954YCj
 /9Bxje/ma4Hcq9VmUqFpcK3BtabstmdU11pb09O9By5MFwQUYXWRZ4hArq/sDJuE7e6d
 jdrO8GqEyfSdl6I/YpBFOU6Cr1beioNmDtweTzR+t8T59BJIq3R5aSjs+xiMhsdZpTOe
 vCcr70c7mVfdLY84kTlBITIgkg00wbxKAHZz9Ua63zF5lxS/qM7GVJYyklqRrp8PV5Bw
 RJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N+JpIu3vYJU8a5Gq7Z5l9BFQkWLO3Nuw3pvsMvETS7c=;
 b=EHGlbj0F+3dl9QDBfthGUEoygjKA1jyZrovHjzWTaYGdWwZmeXtxBL6UGfkK1S1ObX
 B6VA7q7m0w68ij8QdPjynbmsOenCiOq71LpfpH9ammsfr5CuDoTPyZ0c9Np1UNz+UoYw
 R2CUyyvizNjcZj3kOZgEPqhRm1Y8K8nPX2XN3eOZapOWDGYvVnKwZSKxa2Vm7Ii2cflD
 yx7edm2qImkVmPj0t05tZl65BfCcroF2L5jje3/CV23+Ki9sMnoMGP00rS/svZO3EOkS
 5NMO5/TXqFiFzAPcL6FSoy3Ua1lgQdBNffIssBeCqSn0jEo5yz6u91kuQmf/2ZeIM11l
 Tg/A==
X-Gm-Message-State: APjAAAUXjUVcAngICncqYakN8Fe3Tw7odH5DG6gNlt07pwwZTrNgnwh0
 FKCbTmQByttX10AbR0GXS0tk7KmSz8XZK7PSzy4=
X-Google-Smtp-Source: APXvYqwpjloweDhJk9K1WbRoanlfiA93jPFsGS8Fs+PosuYx6ygOY/COI9WSyi+Vw5n5/quxpcoKFqWqpEy093u1djo=
X-Received: by 2002:aa7:d6d1:: with SMTP id x17mr1784678edr.57.1577186540180; 
 Tue, 24 Dec 2019 03:22:20 -0800 (PST)
MIME-Version: 1.0
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
 <CAKGbVbvj5zK9gVDQ3+0=xmF5pOUOSJzZ6jaGKHoCqwjYz+UiEQ@mail.gmail.com>
In-Reply-To: <CAKGbVbvj5zK9gVDQ3+0=xmF5pOUOSJzZ6jaGKHoCqwjYz+UiEQ@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 24 Dec 2019 12:22:09 +0100
Message-ID: <CAFBinCD+k8O90ePuwSEnW1+oh-xJ9oUC5P2WrHgLLBb0RHj+=Q@mail.gmail.com>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
To: Qiang Yu <yuq825@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_032222_678700_9F4F3ABF 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, lima@lists.freedesktop.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 3:51 AM Qiang Yu <yuq825@gmail.com> wrote:
[...]
> For the code, I think you may need some lock to protect the time records as
> there are two kernel threads gp/pp will try to mark GPU busy and several
> interrupts try to mark GPU idle.
good catch, thank you for this!
I assume the reason is that the panfrost GPUs are using a "unified"
architecture, while the ones supported by lima don't

I'll add locking so I don't run into trouble.


Thank you!
Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
