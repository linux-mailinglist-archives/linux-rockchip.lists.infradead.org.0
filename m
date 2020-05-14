Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E7A1D367A
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 May 2020 18:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Reply-To:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Od2oJkJKCoO2ZM5eU+pUqF4w/Ssb/UWCO0WJzohCHtM=; b=euq
	Md3ADeuSDVp86buryiTFRYODKHPrPkFJzSDxKM0J24k+Gn99IJ2sNhA8n1Sh/HFK2fnQ1qKVCu4MK
	Vnfq1Sb+KbBv5WcHNvn5SeZnUP5sQmMKUP9yy67i7BXHtNhLjSOPz0DYKFHDjVKrd//QM9BKzjZTF
	ktrExLJWPqftippf2StINwmGo6VxsU0odl0wxBHlGyGIwt078E/O9mNxnEnblS8juPAxccIZO8eii
	yof8C1gx5F+qIXBPOvZpP7L46mNfYpuNmXYO3zjVQc2oMQIeLBvVun6ocRUugZc2y61cJu9elUxBr
	o0mgnPHDniua+xnIXzZnRzpU5c5oPiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGiv-00016z-8A; Thu, 14 May 2020 16:28:41 +0000
Received: from se.sendifolk.live ([45.95.171.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGip-00010d-EU
 for linux-rockchip@lists.infradead.org; Thu, 14 May 2020 16:28:39 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mail; d=sendifolk.live; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date;
 i=info@sendifolk.live; bh=iDKtW5nwQUMQLdoiy13PVMOL2M4=;
 b=Bqnjx4L9Rsv3CkVAvpJ4Qd3cCPTio+ULh7rBebfjXRUP/62pbjfBH8jaU+Z0UFUi57bTN6OR+0X6
 qeZTxfwJ9wwsiLiq7Nsbd5VFxLHDGElIhiCwbOnT5/QS9Yl0REl0IJPftS7gfjXg6+2KdgAfPOAY
 NOBkY+FuniHM5XN0Mi0=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mail; d=sendifolk.live;
 b=EChbgiJkotaWUPgYSgRPfFdeufirgwzkla9gMuHUT3YkHEWIOubiG+zftlIhxoxN96AaN8T0YKnh
 hcdfmuYHL0yrqWtlITMbVIYSV6wDzZoH72ny/s/bvfwu1dRKT+zU+rg9oJ02bRsoT+cy1wq94gJy
 QdXvsEgQ9957oEaE/ws=;
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello
To: linux-rockchip@lists.infradead.org
From: "Emili Berker" <info@sendifolk.live>
Date: Thu, 14 May 2020 18:07:47 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_092835_657719_0E62BA88 
X-CRM114-Status: SPAM  ( -14.34  )
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.7 UNCLAIMED_MONEY        BODY: People just leave money laying around
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 MISSING_MID            Missing Message-Id: header
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Message-ID: <E1jZGiv-00016z-8A@bombadil.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello,

I am Mrs. Emili Berker, I'm a Cambodian American Citizen, I'm the wife of late Mr. Jon Berker, my husband worked with the Brunei Shell Petroleum Co Sdn Bhd (BSP) for twenty years and worked in Istanbul Turkey as a contractor before he died in the year 2010.

We were married for 14 years without a child. My Husband died after a brief illness that lasted for only two weeks. Since his death I decided not to re-marry or get a child outside my matrimonial home. When my late husband was alive we deposited the sum of $6,500,000 Million with a Bank in Turkey. The bank management just wrote me as the beneficiary to come forward to sign for the release of this fund or rather issue a letter of authorization to somebody to receive it on my behalf if I can not come over.

Presently, I'm in the hospital where I have been undergoing treatment for esophageal cancer. My doctor have told me that I have only a few months to live. It is my last wish to see this money distributed to charity organizations, Because my husband relatives and friends have plundered so much of my wealth since my illness, I cannot live with the agony of entrusting this huge responsibility to any of them.

Please, I'm seeking for any honest person who will get the Funds from the Bank. And  use this money to fund the poor, orphanages, widows and charity organizations. I took this decision because I don't have any child that will inherit this money and I don't want my husband's hard earned money to be misused by his greedy relatives.

Due to the state of my health. I can not communicate by phone because my illness have affected my throat. I prefer to communicate here on email. I will appreciate if you give me more light about you and your details.

I don't want a situation where this money will be used in an ungodly manner. Hence the reason for taking this bold decision. I am not afraid of death hence I know where I am going if i die. As soon as I receive your reply I shall give you the contact detail`s of my lawyer who is conversant with the unclaimed funds and my presents situation. However I shall forward to you the bank details with the letter i will give you as she will be the one to assist you in laying claims for this funds.

Above all, I wish to assure you that the funds in question is not an act of Terrorist Funding, neither Money Laundering nor
Drug-funding. Thus, the transfer will follow the normal protocol of funds transfer, backed up with its papers so that you will not encounter any difficulties or problem with your Federal Monetary Control authorities. Kindly contact me via my private email for more details. (emiliberker11@gmail.com)

Thanks,
Yours Truly,
Mrs. Emili Berker.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
