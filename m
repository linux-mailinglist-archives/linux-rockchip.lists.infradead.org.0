Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5EA1DB329
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 14:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwohkwKLUHa09KaCTtxnGNByPLOd5KDXpHVjvyvNqdo=; b=Ed4tI8GyaZfy42
	9IDg9cPATKVXqgb6oUmbVQ1QcNAlFoj9vCjPTfnVSDCeman99GdA/Pe/P9EatuXAq81uY3MFi0RP9
	rTyy0MBzIdjlltF1hoigv9xK/pROh02UkeqNgyBCaFbwXLwpHrudmrRgT8I3l1hibKT+9k4f1PBG2
	5eiRwig4q5lNxoRB2pJl4wN4ckU7vPgmAKfzbzxVl34RCmFEsZYF1EJzkwMFnGqSQWVpTko8eFTay
	sj+UqTgv2gHgUG9YwnSfA2FFrmwXOkBI9BSyjk71LhKxKJ0wz1p5P2oLklMWongSS6i4NNukOjdIo
	+NaHbT83Sj2QYKbcK+Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNpL-0003j3-79; Wed, 20 May 2020 12:28:03 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNpI-0003ih-HY
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 12:28:01 +0000
Received: by mail-vk1-xa42.google.com with SMTP id v192so705516vkd.3
 for <linux-rockchip@lists.infradead.org>; Wed, 20 May 2020 05:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iTSpuOn+eOiS5F2tW+aa6K9KavJrkW2XpL8GASe/3EQ=;
 b=ZJZF0s47BiUZI+F85ZQ/KV58LF7ji2q+KFLvBJ2XZ302vzJCNJ039/dPO3bHj1ZPtB
 pJKW5aCXa6blw8zRD8SIaIxTyryOtTan8+Pl+wAHkJ0Xo6b2oDG5O7v5ekwC24jn2y9d
 nd/b1j13PoD/2ellIblaAg0pBrXGjTZhmT6T6EeuA2yoRwAxcetwnm4SPnngAcdPgf/i
 MZ3uKXhnpc5ImfzZ3Bp25del2ZqvsrFYMn6WvtwHa6fPvJEP/UPFKK8bQ4DdO/ZKeftt
 cCqpvHOL5WEMx54c5VCPYSDcjGaOJzqiMJ1tcYhOrtu/XiNs6ti+vowlOzWD2c+cTFrQ
 D2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iTSpuOn+eOiS5F2tW+aa6K9KavJrkW2XpL8GASe/3EQ=;
 b=Bx9rkN5aSkxhQKn9o49neb3dThipI2i33WhrG2qNV4sUJAhdbqOeXnvpQcI10eZCex
 9MWJ/b69+u0gk2vVIYAnQfJoIyGHFFkQwYL0aL7x99Km6V0F1MAnhppcf5ILWOoi+daJ
 1nStqXtPs3lQPF2pYvpHstVDoAKpv2kdB5AprGBB5VxmOfVPUVOsDGBWUg3o2dbVO+ST
 bGv8rUiTk9wlySN8It6+cjddFriJ/BypF/yhP6nN3x2M7mci61sPVsncplQLTC0RAYi2
 LFPpv7dv7ZOLdEtGrTX/EroupK4w/co5fDNhDjZ1vod44zhiJ1ZMvX6m2C3lChdHWPZB
 a9IA==
X-Gm-Message-State: AOAM532rMscnmtt+UCvNgH7zgMQl8crPZNgiaH1dMCkoXj5ceiyzbZfM
 4HOFXqHZamyVgW9yqQOZyO9G7rgNJC50Di0ns+g=
X-Google-Smtp-Source: ABdhPJwi6gO3x2zPlKACBRNtmyz9MZkVP44O+i7txJYBnIyawpLq8rhQvBeFmSWczOcWADb1Cg+F6WhAQyq9T6RAsVg=
X-Received: by 2002:ac5:c92c:: with SMTP id u12mr3515908vkl.93.1589977679364; 
 Wed, 20 May 2020 05:27:59 -0700 (PDT)
MIME-Version: 1.0
References: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
In-Reply-To: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
From: Emmanuel Grumbach <egrumbach@gmail.com>
Date: Wed, 20 May 2020 15:27:50 +0300
Message-ID: <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA@mail.gmail.com>
Subject: Re: iwlwifi firmware loading problems, rk3399
To: =?UTF-8?Q?Mika_Penttil=C3=A4?= <mika.penttila@nextfour.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_052800_596171_BC5A61FC 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [egrumbach[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

>
> Hi,
>
> We have custom made, Rockchip rk3399 based board with a standard M.2
> socket for wifi/bt card.
>
> We have tried man different cards, like Intel 9260 and Intel AX200, but
> are experiencing problems while loading the firmware.
>
>    Failed to load firmware chunk!
>
> etc. I have a little debugged and the problem seems that the interrupts
> that acknowledges the load to proceed, is not coming, randomly.
> I have tried many firmwares. Do you have any pointers where to look next?

I guess you need to debug your board :)
The interrupt is not coming, then.. there isn't much the driver can do.

>
> Thanks,
> Mika
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
